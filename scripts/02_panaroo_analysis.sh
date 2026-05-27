#!/usr/bin/env bash
# Pangenome analysis using Panaroo
# Usage: bash scripts/02_panaroo_analysis.sh
# NOTE: Set paths to match your system

set -euo pipefail

#Directories 
BAKTA_DIR="bakta_out"
GENOMES_ID="genomes_ID.txt"
OUTPUT_DIR="panaroo_out"
LOG_DIR="panaroo_logs"
THREADS=8

#create directories
mkdir -p "${LOG_DIR}"

#GFF3 files
GFF_FILES=""
for id in $(cat "${GENOMES_ID}"); do
    GFF_FILES="${GFF_FILES} ${BAKTA_DIR}/${id}/${id}.gff3"
done

#panaroo analysis
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting Panaroo pangenome analysis"

panaroo \
    -i ${GFF_FILES} \
    -o "${OUTPUT_DIR}" \
    --clean-mode sensitive \
    --remove-invalid-genes \
    -a core \
    --core_threshold 0.95 \
    -t "${THREADS}" \
    > "${LOG_DIR}/panaroo.log" 2>&1

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Panaroo finished"
