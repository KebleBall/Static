#!/usr/bin/env python2

from flask.ext.frozen import Freezer
import main

freezer = Freezer(main.APP)

if __name__ == "__main__":
    freezer.freeze()
