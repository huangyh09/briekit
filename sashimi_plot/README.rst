====================
sashimi_plot updates
====================

This folder adapts sashimi_plot_ from Yarden's MISO_ package, in order to 
produce tailored sashimi plot for BRIE's outputs. It is a self-contained folder,
and includes all scripts to create sashimi plots from both bulk-cell and 
single-cell RNA-seq reads.

.. _sashimi_plot: https://miso.readthedocs.io/en/fastmiso/sashimi.html
.. _MISO: https://github.com/yarden/MISO


New features
============

In this version, there are a few updates, including major changes as follows,

1. Besides MISO outputs, it supports BRIE outputs, both prior and posterior.

2. Sopported png output format, by using ``--plot-lable test.png``

3. If no given coverages, set it from sam/bam file directly.

4. Changed the scale of subplots and mRNA plot. 

5. Set the yticks as integer.


Quick start
===========

Sashimi plot requires a Python2 environment, you can do it as BRIE-kit_. You 
can run the python scripy sashimi_plot.py_ directly without installation, as
this command line, or following the demo.sh_ for standard sashimi plot, or 
following the BRIE specific example brie_sashimi.sh_.

.. code-block:: bash

  python sashimi_plot.py --plot-event $event_id test-data/event-data/ settings/sashimi_plot_settings.txt --output-dir $out_dir --plot-title "Example event" --plot-label "test.pdf" #--no-posteriors

Note, you need to customise the setting for generating sashimi plot. One example
for BREI output is here_.

.. _BRIE-kit: https://github.com/huangyh09/briekit/wiki#0-installation
.. _sashimi_plot.py: https://github.com/huangyh09/briekit/blob/master/sashimi_plot/sashimi_plot.py
.. _demo.sh: https://github.com/huangyh09/briekit/blob/master/sashimi_plot/demo.sh
.. _brie_sashimi.sh: https://github.com/huangyh09/brie/blob/master/example/gastrulation/brie_sashimi.sh
.. _here: https://github.com/huangyh09/brie/blob/master/example/gastrulation/sashimi_setting.txt
