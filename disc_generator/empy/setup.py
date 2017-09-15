#!/usr/bin/env python
#
# $Id: setup.py.pre 3116 2004-01-14 02:53:02Z max $ $Date: 2004-01-13 18:53:02 -0800 (Tue, 13 Jan 2004) $

from distutils.core import setup

DESCRIPTION = "A templating system for Python."

LONG_DESCRIPTION = """\
    EmPy is a system for embedding Python expressions and statements
    in template text; it takes an EmPy source file, processes it, and
    produces output.  This is accomplished via expansions, which are
    special signals to the EmPy system and are set off by a special
    prefix (by default the at sign, '@').  EmPy can expand arbitrary
    Python expressions and statements in this way, as well as a
    variety of special forms.  Textual data not explicitly delimited
    in this way is sent unaffected to the output, allowing Python to
    be used in effect as a markup language.  Also supported are "hook"
    callbacks, recording and playback via diversions, and dynamic,
    chainable filters.  The system is highly configurable via command
    line options and embedded commands.
"""

setup(
    name="empy",
    version="3.3.2",
    author="Erik Max Francis", 
    author_email="software@alcyone.com",
    url="http://www.alcyone.com/software/empy",
    license="%LICENSE",
    py_modules=["em", "emlib"],
    platforms=["unix", "linux", "win32"],
    description=DESCRIPTION,
    long_description=LONG_DESCRIPTION,
)
