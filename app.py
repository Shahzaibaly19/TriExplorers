from datetime import datetime
from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
from werkzeug.utils import secure_filename
from flask_mail import Mail
import json
import os
import math
import socket
socket.getaddrinfo('localhost', 8080)


with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
db = SQLAlchemy()
app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='587',
    MAIL_USE_TLS=True,
    MAIL_USE_SSL=False,
    MAIL_USERNAME=params['gmail-user'],
    MAIL_PASSWORD=params['gmail-password']
)
mail = Mail(app)
if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db.init_app(app)


class Contact(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)


class Pform(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)
    Package_name = db.Column(db.String(30))
    email = db.Column(db.String(20), nullable=False)
    Phone = db.Column(db.String(12), nullable=False)
    other_detail = db.Column(db.String(120), nullable=False)
    person = db.Column(db.String(12), nullable=True)


class Customform(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)
    number = db.Column(db.String(20), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    cityres = db.Column(db.String(50), nullable=False)
    visitplace = db.Column(db.String(50), nullable=False)
    traveldate = db.Column(db.String(12), nullable=False)
    tourtype = db.Column(db.String(25), nullable=False)
    adult = db.Column(db.String(10), nullable=False)
    child = db.Column(db.String(10), nullable=False)
    infant = db.Column(db.String(10), nullable=False)
    duration = db.Column(db.String(12), nullable=False)
    vehicle = db.Column(db.String(20), nullable=False)
    itinerary = db.Column(db.String(200), nullable=False)
    further = db.Column(db.String(150), nullable=False)
    personal = db.Column(db.String(5), nullable=False)


class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    topic = db.Column(db.String(50), nullable=False)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(21), nullable=False)
    content = db.Column(db.String(120), nullable=False)
    img_file = db.Column(db.String(12), nullable=True)
    date = db.Column(db.String(12), nullable=True)


class Package(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    category = db.Column(db.String(50), nullable=False)
    days = db.Column(db.String(50), nullable=False)
    content = db.Column(db.String(500), nullable=False)
    image = db.Column(db.String(12), nullable=True)


PACKAGE_PER_PAGE = 3


@app.route("/")
@app.route("/home")
def home():
    page = request.args.get('page', 1, type=int)
    package = Package.query.paginate(page=page, per_page=PACKAGE_PER_PAGE)
    return render_template("index.html", package=package)


@app.route("/dashboard", methods=['GET', 'POST'])
def dashboard():
    if ('user' in session and session['user'] == params['admin_user']):
        posts = Posts.query.filter_by().all()
        return render_template('dashboard.html', posts=posts)

    if request.method == 'POST':
        username = request.form.get('uname')
        password = request.form.get('password')
        if (username == params['admin_user'] and password == params['admin_password']):
            session['user'] = username
            posts = Posts.query.all()
            return render_template("dashboard.html", params=params, post=posts)

    return render_template("login.html", params=params)


@app.route("/uploader", methods=['GET', 'POST'])
def uploader():
    if ('user' in session and session['user'] == params['admin_user']):
        if (request.method == 'POST'):
            f = request.files['file']
            f.save(os.path.join(
                app.config['UPLOAD_FOLDER'], secure_filename(f.filename)))
            return "Uploaded Sucessfully"


@app.route("/edit/<string:sno>", methods=['GET', 'POST'])
def edit(sno):
    if ('user' in session and session['user'] == params['admin_user']):
        if request.method == 'POST':
            box_title = request.form.get('title')
            topic = request.form.get('topic')
            slug = request.form.get('slug')
            content = request.form.get('content')
            img_file = request.form.get('img_file')
            date = datetime.now()

            if sno == '0':
                post = Posts(title=box_title, topic=topic, slug=slug,
                             content=content, img_file=img_file, date=date)
                db.session.add(post)
                db.session.commit()
            else:
                post = Posts.query.filter_by(sno=sno).first()
                post.title = box_title
                post.slug = slug
                post.topic = topic
                post.content = content
                post.img_file = img_file
                post.date = date
                db.session.commit()
                return redirect('/edit/' + sno)
        post = Posts.query.filter_by(sno=sno).first()
        return render_template('edit.html', params=params, post=post, sno=sno)


@app.route("/delete/<string:sno>", methods=['GET', 'POST'])
def delete(sno):
    if ('user' in session and session['user'] == params['admin_user']):
        post = Posts.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/dashboard')


@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html', params=params, post=post)


@app.route("/pdetail/<string:package>", methods=['GET'])
def pdetail(package):
    package = Package.query.filter_by(name=package).first()
    return render_template('pdetail.html', params=params, package=package)


@app.route("/logout")
def logout():
    session.pop('user')
    return redirect('/dashboard')


@app.route("/legal_info")
def legal():
    return render_template('legal.html')


@app.route("/packages", methods=['GET', 'POST'])
def packages():
    package = Package.query.all()
    return render_template('packages.html', package=package)


POST_PER_PAGE = 2


@app.route("/blog")
def blog():
    page = request.args.get('page', 1, type=int)
    posts = Posts.query.paginate(page=page, per_page=POST_PER_PAGE)
    return render_template('blog.html', posts=posts)


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if (request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')

        entry = Contact(name=name, phone_num=phone, msg=message,
                        date=datetime.now(), email=email)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('Contact message from' + name,
                          sender=email,
                          recipients=[params['gmail-user']],
                          body=message + "\n" + phone
                          )

    return render_template('contact.html')


@app.route("/pform", methods=['GET', 'POST'])
def pform():
    if (request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        other_detail = request.form.get('other_detail')
        person = request.form.get('person')
        package_name = request.form.get('pname')

        entry = Pform(name=name, Package_name=package_name, Phone=phone, other_detail=other_detail,
                      email=email, person=person)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('Package Booking from  :' + name,
                          sender=email,
                          recipients=[params['gmail-user']],
                          body=name + "\n" + " number :" + phone + "\n" + " person :" +
                          person + "\n" + " email :" + email + "\n" + " other :" +
                          other_detail + "\n" + " Package name :" +
                          package_name
                          )

    return render_template('pform.html')


@app.route("/about")
def about():
    return render_template('about.html')


@app.route("/customized", methods=['GET', 'POST'])
def customized():
    if (request.method == 'POST'):
        name = request.form.get('name')
        number = request.form.get('phone')
        email = request.form.get('email')
        cityres = request.form.get('residence')
        visitplace = request.form.get('city')
        traveldate = request.form.get('date')
        tourtype = request.form.get('type')
        adult = request.form.get('adult')
        child = request.form.get('child')
        infant = request.form.get('infants')
        duration = request.form.get('duration')
        vehicle = request.form.get('vehicle')
        itinerary = request.form.get('message')
        further = request.form.get('info')
        personal = request.form.get('accept')

        entry = Customform(name=name, number=number, email=email, cityres=cityres, visitplace=visitplace,
                           traveldate=traveldate, tourtype=tourtype, adult=adult, child=child, infant=infant,
                           duration=duration, vehicle=vehicle, itinerary=itinerary, further=further, personal=personal)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('Custom form filled' + name,
                          sender=email,
                          recipients=[params['gmail-user']],
                          body="Name :" + name + "\n" + "Num :" + number + "\n" + "Email :" + email + "\n" + "City of Residence :" + cityres + "\n" +
                          "Place to visit :" + visitplace + "\n" + "Tour Date :" +
                          traveldate + "\n" + "Tour Type :" + tourtype + "\n"
                          + "Adults :" + adult + "\n" + "child :" + child + "\n" + "infants :" +
                          infant + "\n" + "Tour Duration Nights :" + duration + "\n"
                          + "Vehicle :" + vehicle + "\n" + "Itinerary :" + itinerary + "\n" +
                          "Further Details :" + further + "\n" +
                          "Agree with personal Details :" + personal + "\n"
                          )
    return render_template('customized.html')


if __name__ == '__main__':
    app.run(debug=True)
