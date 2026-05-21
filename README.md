# Bacterial Population Structure

A workflow to infer population structure from bacterial genomes using genome annotation, pangenome analysis, and Bayesian clustering.

The example dataset used here consists of diarrheagenic *Escherichia coli* (DEC) genomes downloaded from [Enterobase](https://enterobase.warwick.ac.uk/).


## Workflow

| Step | Tool | Script |
|------|------|--------|
| 1. Genome Annotation | Bakta | `scripts/01_bakta_annotation.sh` |
| 2. Pangenome Analysis | Panaroo | |
| 3. Population Structure | fastBAPS | |


## Requirements

Conda environment yml files are provided in `envs/`. To create each environment:

```bash
conda env create -f envs/bakta_env.yml
conda env create -f envs/panaroo_env.yml
conda env create -f envs/fastbaps_env.yml
```

- [Bakta GitHub](https://github.com/oschwengers/bakta) — see database setup instructions
- [Panaroo GitHub](https://github.com/gtonkinhill/panaroo)
- [fastBAPS GitHub](https://github.com/gtonkinhill/fastbaps)


## Step 1: Genome Annotation (Bakta)

### Database setup
Follow instructions at [https://github.com/oschwengers/bakta](https://github.com/oschwengers/bakta) to download the database into `db_bakta/`.

### Run
```bash
conda activate degain_bakta
bash scripts/01_bakta_annotation.sh
```

Annotates all `.fasta.gz` files in `genomes/`, writing output to `bakta_out/` and logs to `logs/`.


## Step 2: Pangenome Analysis (Panaroo)


## Step 3: Population Structure (fastBAPS)


## Example Dataset

Genomes used in this example were downloaded from [Enterobase](https://enterobase.warwick.ac.uk/) and represent diarrheagenic *Escherichia coli* (DEC) pathotypes.


## License

MIT
