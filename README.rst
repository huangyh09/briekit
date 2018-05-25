BRIE-kit
========

Preprocessing tool kit of BRIE project in splicing analysis

Why BRIE-kit
------------

The purpose of move some utility functions from BRIE_ main package into this 
tool kit is that ``brie-event`` is only supported by Python 2 (see issue_). 
Therefore, we keep a few pre-processing tools into this package and  BRIE main 
package can focus on splicing quantification and downstream analysis. 

**Therefore, use BRIE-kit in Python 2 environment only for full fucntions.**

.. _BRIE: https://github.com/huangyh09/brie
.. _issue: https://github.com/huangyh09/brie/issues/12

Supported fucntions
-------------------

BRIE-kit provides following functions through command line, which are upgraded
from BRIE main package:

1. ``briekit-event``: Extract the splicing events from gene annotation file in 
gff3/gtf formate.

2. ``briekit-event-filter``: Filter exon-skipping events by setting 
thresholds.

3. ``briekit-factor``: Fetch genentic features from genome sequence reference 
file in fasta formate.


Quick Start
-----------

**Installation** 

BRIE-kit is developed under Python 2.7 environment, and not full compatible 
with Python 3, **so please use it in Python2 environment**. If you are using
Python3 in Anaconda_ 3, you can simply create a conda_ environment with 
Python=2.7:

.. code-block:: bash

  conda create -n briekit python=2.7 numpy=1.13.0 

  source activate briekit

Once you are in a Python 2 environment, there are two ways to isntall: 

- Opt 1: Type in terminal: ``pip install briekit``. Add ``-U`` if you want to 
  upgrade your earlier installation.
- Opt 2: Download the GitHub repository_, and type ``python setup.py install``

Note, if you don't use Anaconda_  and don't have root permission, add 
``--user``, so you can install it in your folder.

.. _conda: https://conda.io/docs/user-guide/tasks/manage-environments.html
.. _Anaconda: https://anaconda.org
.. _repository: https://github.com/huangyh09/briekit


**Arguments**

- Type command line ``briekit-event -h``


Detailed manual
---------------

See the documentation_ on how to install, to use, to find the annotation data 
etc.

.. _documentation: https://github.com/huangyh09/briekit/wiki


References
----------

Yuanhua Huang and Guido Sanguinetti. `BRIE: transcriptome-wide splicing 
quantification in single cells
<https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1248-5>`_. 
\ **Genome Biology**\, 2017; 18(1):123.
