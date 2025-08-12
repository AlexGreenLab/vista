# Toehold VISTA

**Toehold VISTA** — versatile in-silico targeting analysis (VISTA) RNA structure-aware ML pipeline (PLS-DA) for optimized RNA sensor design.

This repository includes the code used for:
1. `Pairwise Probability` which computes pairwise probability values across an RNA target for various sensor binding sites, and maps these using an arc plot.
2. `PLS-DA VISTA` which runs feature selection (RFE) and a PLS-DA pipeline with logistic regression classifiers before visualizing results (loadings, latent-variable scatter, ROC curves).
3. `toehold-VISTA` which provides code to design toehold switches using the VISTA pipeline against new RNA targets. 

---

## Quickstart

Set up the toehold-VISTA environment.

### Using Conda (recommended)
```bash
# clone the repo
git clone git@github.com:AlexGreenLab/VISTA.git
cd toehold-vista
# create environment
conda env create -f environment.yml
conda activate VISTA
```

### Using Pip + Virtual Environment 
```bash
git clone https://github.com/AlexGreenLab/VISTA.git
cd toehold-vista
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### Using Docker
```bash
docker build -t toehold-vista:latest .
docker run --rm -it -v "$(pwd)":/app toehold-vista:latest
```

### Other Dependencies/Packages
# Installing ViennaRNA
ViennaRNA is NOT a pip package. It comes from the ViennaRNA library which provides the RNA Python module for RNA secondary structure prediction. ViennaRNA must be installed via: 

Mac (Homebrew)
```bash
brew install viennarna
```
or via Conda:
```bash
conda install -c bioconda viennarna 
```

Linux (APT-based systems like Ubuntu)
```bash
sudo apt update
sudo apt install viennarna
```

Windows
Use Windows Subsystem for Linux (WSL) and follow the Linux installation above
Alternatively, download from https://www.tbi.univie.ac.at/RNA/

# Installing NUPACK
Nupack is used extensively in the toehold-VISTA code. It is essential that NUPACK be downloaded. 
Mac (Homebrew)
```bash
pip install nupack
```

Linux (APT-based systems like Ubuntu)
```bash
pip install nupack
```

Windows
Install via pip in a Python environment:
```bash
pip install nupack
```
For advanced usage or the command-line interface, see: https://www.nupack.org/

