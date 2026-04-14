# Bacterial Population Structure Pipeline

A step-by-step workflow for inferring population structure from bacterial genomes using genome annotation, pangenome analysis, recombination filtering, and Bayesian clustering.

---

## Overview

This pipeline takes assembled bacterial genomes through annotation, pangenome analysis, recombination removal, and Bayesian population structure inference.

The example dataset used here consists of diarrheagenic *Escherichia coli* (DEC) genomes downloaded from [Enterobase](https://enterobase.warwick.ac.uk/).

---

## Workflow

| Step | Tool | Script |
|------|------|--------|
| 1. Genome Annotation | Bakta | `scripts/01_bakta_annotation.sh` |
| 2. Pangenome Analysis | Panaroo | |
| 3. Recombination Filtering | Gubbins | |
| 4. Population Structure | fastBAPS | |

---

## Requirements

### Bakta
```bash
conda create -n bakta -c conda-forge -c bioconda bakta
conda activate bakta
```
See [Bakta GitHub](https://github.com/oschwengers/bakta) for database setup.

### Run

```bash
conda activate bakta
bash scripts/01_bakta_annotation.sh
```

Annotates all `.fasta.gz` files in `genomes/`, writing output to `bakta_out/` and logs to `logs/`.

---

## Example Dataset

Genomes used in this example were downloaded from [Enterobase](https://enterobase.warwick.ac.uk/) and represent diarrheagenic *Escherichia coli* (DEC) pathotypes.

---

## License

MIT
