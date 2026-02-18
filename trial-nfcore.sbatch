#!/bin/bash
#SBATCH -p compute
#SBATCH -t 3:00:00
#SBATCH --mem=24G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12

cd /flash/SzollosiU/fatima-li/trial_nf-core

module load bioinfo-ugrp-modules
module load Nextflow2/25.10.4
module load DB/GTDBTK/ref_data/226.0 

nextflow run nf-core/mag  -profile oist  --input samplesheet_shortreadonly.csv  --outdir out_path   --gtdb_db ${GTDBTK_DATA_ARCHIVED}  -params-file nf-params.json
