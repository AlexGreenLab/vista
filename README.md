# VISTA

**VISTA** — versatile in-silico targeting analysis (VISTA) RNA structure-aware ML pipeline (PLS-DA) for optimized RNA sensor design.

RNA-based biosensor design is often limited by the complexity of RNA structure–function relationships. VISTA combines RNA secondary structure prediction with and machine learning–based feature selection(PLS-DA) to guide sensor design for optimized binding and activation. It enables high-throughput evaluation of binding sites, supports visualization of structural accessibility, and integrates ViennaRNA/NUPACK for accurate thermodynamic modeling.

This repository includes the code used for:
1. `Pairwise Probability` which computes pairwise probability values across an RNA target for various sensor binding sites, and maps these using an arc plot.
2. `PLS-DA VISTA` which runs feature selection (RFE) and a PLS-DA pipeline with logistic regression classifiers before visualizing results (loadings, latent-variable scatter, ROC curves).
3. `toehold-VISTA` which provides code to design toehold switches using the VISTA pipeline against new RNA targets. 

# Running the Code

### Launching Jupyter Notebook
Jupyter Notebook provides an interactive environment to run and modify the scripts in this repository. 
```bash
# Make sure your environment is active 
conda activate vista

# Install Jupyter if you don't already have it
pip install jupyter 

# Launch Jupyter Notebook
jupyter notebook
```
A browser window will open. Navigate to the toehold-VISTA folder to run the design code notebook. Ensure to update the "source_seq_list.csv" prior to starting the code. Follow the guides in the notebooks for running the script. 

---

## Quickstart

Set up the toehold-VISTA environment.

### Using Conda (recommended)
```bash
# clone the repo
git clone git@github.com:AlexGreenLab/vista.git
cd vista
# create environment
conda env create -f vista.yml
conda activate vista
```

### Using Pip + Virtual Environment 
```bash
git clone https://github.com/AlexGreenLab/vista.git
cd vista
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### Using Docker
```bash
docker build -t vista:latest .
docker run --rm -it -v "$(pwd)":/app vista:latest
```

# Other Dependencies/Packages
### Installing ViennaRNA
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

### Installing NUPACK
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



