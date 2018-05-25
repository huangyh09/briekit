"""
BRIE-kit: Preprocessing tool kit of BRIE in splicing analysis
See: http://brie-rna.sourceforge.net
"""

# Always prefer setuptools over distutils
from setuptools import setup, find_packages
# To use a consistent encoding
from codecs import open
from os import path
import briekit

here = path.abspath(path.dirname(__file__))

# Get the long description from the relevant file
with open(path.join(here, 'README.rst'), encoding='utf-8') as f:
    long_description = f.read()
    
reqs = ['numpy', 'pysam']

setup(
    name='briekit',

    # Versions should comply with PEP440.  For a discussion on single-sourcing
    # the version across setup.py and the project code, see
    # https://packaging.python.org/en/latest/single_source_version.html
    version=briekit.__version__,

    description='BRIE-kit: Preprocessing tool kit of BRIE in splicing analysis',
    long_description=long_description,

    # The project's main homepage.
    url='https://github.com/huangyh09/briekit',

    # Author details
    author='Yuanhua Huang',
    author_email='yuanhua@ebi.ac.uk',

    # Choose your license
    license='Apache-2.0',

    # What does your project relate to?
    keywords=['Splicing events annotation', 'Sequence features'],

    # You can just specify the packages manually here if your project is
    # simple. Or you can use find_packages().
    packages=find_packages(),

    entry_points={
          'console_scripts': [
              'briekit-factor = briekit.brie_factor:main',
              'briekit-event = briekit.events.event_maker:main',
              'briekit-event-filter = briekit.events.event_filter:main',
              ],
          }, 

    # List run-time dependencies here.  These will be installed by pip when
    # your project is installed. For an analysis of "install_requires" vs pip's
    # requirements files see:
    # https://packaging.python.org/en/latest/requirements.html
    
    install_requires=reqs,

    py_modules = ['briekit']

    # buid the distribution: python setup.py sdist
    # upload to pypi: twine upload dist/...

)