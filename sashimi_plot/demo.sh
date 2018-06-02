#!/bin/sh

### generate gff annotations
index_gff --index test-data/events.gff test-data/event-data/

### create sashimi plot
out_dir=./test-plot
# out_dir=~/test/plot

event_id=chr17:45816186:45816265:-@chr17:45815912:45815950:-@chr17:45814875:45814965:-
python sashimi_plot.py --plot-event $event_id test-data/event-data/ settings/sashimi_plot_settings.txt --output-dir $out_dir --plot-title "Example event" --plot-label "test.pdf" #--no-posteriors
