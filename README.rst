BRIE-kit
========

Preprocessing tool kit of BRIE project in splicing analysis

Why BRIE-kit
------------

The purpose of move some utility functions from BRIE_ main package into this 
tool kit is that brie-event is only supported by Python 2 (see issue_). 
Therefore, we keep a few pre-processing tool into this package and focus BRIE 
main package on splicing quantification and analysis. 

**Therefore, use BRIE-kit in Python 2 environment only for full fucntions.**

.. _BRIE: https://github.com/huangyh09/brie
.. _issue: https://github.com/huangyh09/brie/issues/12

Supported fucntions
-------------------

BRIE-kit provides following functions through command line:

1. ``briekit-event``: Extract the splicing events from gene annotation file in 
gff3/gtf formate. It is upgraded from ``brie-event``.

2. ``briekit-event-filter``: Filter exon-skipping events by setting thresholds.
It is upgraded upgraded from ``brie-event-filter``.

3. ``briekit-factor``: Fetch genentic features from genome sequence reference 
file in fasta formate. It is upgraded from of ``brie-factor``.


Quick Start
-----------

**Installation** 

Recommend using Anaconda_ environment, otherwise add ``--user`` if you don't 
have root permission. 

- Opt 1: Type in terminal: ``pip install briekit``. Add ``-U`` for upgrading
- Opt 2: or download this repository, and type ``python setup.py install``

.. _Anaconda: https://www.continuum.io/anaconda-overview

**Arguments**

- Type command line ``briekit-event -h``


Detailed manual
---------------

See the documentation_ on how to install, to use, to find the annotation data 
etc.

.. _documentation: http://brie-rna.sourceforge.net


References
----------

Yuanhua Huang and Guido Sanguinetti. `BRIE: transcriptome-wide splicing 
quantification in single cells
<https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1248-5>`_. 
\ **Genome Biology**\, 2017; 18(1):123.
