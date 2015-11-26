#!/usr/bin/env python2

import flask

APP = flask.Flask(__name__)
APP.config.from_pyfile("config.py")

@APP.route("/<path:name>")
def show_page(name):
    return flask.render_template(name)

@APP.route("/")
def home():
    return flask.render_template("home.html")

if __name__ == "__main__":
    APP.run()
