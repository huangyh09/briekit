#!/bin/bash
#a demo for generate splicing events and sequence features

###############################################################
#                                                             #
#      Define splicing events and fetch features for mouse    #
#                                                             #
###############################################################


# directory for your data and briekit executable files
DATA_DIR=~/research/annotation/mouse
BIN_DIR=~/anaconda2/bin

### 1. download files
wget http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigWigSummary -O $DATA_DIR/bigWigSummary
wget ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_mouse/release_M12/GRCm38.p5.genome.fa.gz -O $DATA_DIR/GRCm38.p5.genome.fa.gz
wget ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_mouse/release_M12/gencode.vM12.annotation.gtf.gz -O $DATA_DIR/gencode.vM12.annotation.gtf.gz
wget ftp://hgdownload.cse.ucsc.edu/goldenPath/mm10/phastCons60way/mm10.60way.phastCons.bw -O $DATA_DIR/mm10.60way.phastCons.bw
gzip -d $DATA_DIR/GRCm38.p5.genome.fa.gz
chmod +x $DATA_DIR/bigWigSummary

anno_ref=$DATA_DIR/gencode.vM12.annotation.gtf.gz
fasta=$DATA_DIR/GRCm38.p5.genome.fa


### 2. Generate splicing events
$BIN_DIR/briekit-event -a $anno_ref -o $DATA_DIR/mouse_AS


### 3. Splicing events filtering
$BIN_DIR/briekit-event-filter -a $DATA_DIR/mouse_AS/SE.gff3.gz --anno_ref $anno_ref -r $fasta
$BIN_DIR/briekit-event-filter -a $DATA_DIR/mouse_AS/SE.gff3.gz --anno_ref $anno_ref -r $fasta \
    -o $DATA_DIR/mouse_AS/SE.lenient.gtf --add_chrom chrX,chrY --as_exon_min 10 --as_exon_max 100000000 \
    --as_exon_tss 10 --as_exon_tts 10 --no_splice_site #--keep_overlap


### 4. Extacting sequence feature for BRIE
phast=$DATA_DIR/mm10.60way.phastCons.bw
bigWigSummary=$DATA_DIR/bigWigSummary

feature=$DATA_DIR/mouse_AS/mouse_factors.SE.filtered.csv.gz
$BIN_DIR/briekit-factor -a $DATA_DIR/mouse_AS/SE.filtered.gff3.gz -r $fasta -c $phast -o $feature -p 20 --bigWigSummary $bigWigSummary


feature=$DATA_DIR/mouse_AS/mouse_factors.SE.lenient.csv.gz
$BIN_DIR/briekit-factor -a $DATA_DIR/mouse_AS/SE.lenient.gff3.gz -r $fasta -c $phast -o $feature -p 20 --bigWigSummary $bigWigSummary

