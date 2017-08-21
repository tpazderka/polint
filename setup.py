# -*- coding: utf-8 -*-
from setuptools import setup

from polint import __version__


setup(name='polint',
      version=__version__,
      description='Linter for gettext PO files',
      author='Vlastimil Zíma',
      author_email='vlastimil.zima@gmail.com',
      py_modules=['polint'],
      entry_points={'console_scripts': ['polint = polint:main']},
      install_requires=['polib'],
      test_suite='tests')
