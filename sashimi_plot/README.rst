====================
sashimi-plot updates
====================

This is a update for ``sashimi_plot`` from Yarden's MISO_ package. It contains 
scripts to make sashimi_ plot for visualizing splicing from RNA-seq reads.

.. _sashimi: https://miso.readthedocs.io/en/fastmiso/sashimi.html
.. _MISO: https://github.com/yarden/MISO

New features
============

In this version, there are a few updates, including major changes as follows,

1. If no given coverages, set it from sam/bam file directly.

2. Changed the scale of subplots and mRNA plot. 

3. Set the yticks as integer.

4. Sopported png output format, by using ``--plot-lable test.png``

4. It supports both MISO and BRIE outputs for prior and posterior.

