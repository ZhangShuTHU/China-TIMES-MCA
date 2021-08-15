# China-TIMES-MCA Model
# Repo Contents
1. `MATLAB` data transfer code
2. `R` visualization code
3. `LHS sampling program` and documentation and input data

# System Requirements
## Hardware Requirements
Hardware needed depends on the size and complexity of models, but here is a configuration suitable for typical TIMES models:
CPU: Minimum 4 cores are recommended. 8-16 would be desirable for larger models.
RAM: 4-8 GB is enough, but GAMS needs more RAM for larger models. 32 GB would accomodate most models.
HDD: 500GB-1TB free space for Veda and GAMS files.

Note: We tested our study on a PC with Intel i7-9700, 32GB RAM, 1T SSD PC. The performance of the computer and solver can have a significant impact on the computing time. 

## Software Requirements
`MATLAB`: R2021a (https://www.mathworks.com/)

`R`: 4.1.0 (https://www.r-project.org/)

`Tableau`: 2021.2 (https://www.tableau.com/)

`ableau Prep Builder`: 2021.2 (https://www.tableau.com/)

`LHS sampling program`: 1.0 (The installation package is in this repository)

`ANSWER-TIMES`: 6.9.7 (https://iea-etsap.org/index.php/etsap-tools/data-handling-shells/answer)

`GAMS`: 35.2 (https://www.gams.com/)

`GAMS-CPLEX`: 20.1 (https://www.gams.com/)

## R dependencies
```
reshape2
ggplot2
ggridges
ggsci
openxlsx
gridExtra
```
## OS dependencies
Currently the official TIMES model can only be used under Windows, for use under Linux, see https://iea-etsap.org/projects/TIMES-HPC_final.pdf.

**Windows only**

Note: We tested our study on a Windows 10 64-bit PC. But theoretically, it should work on other versions of Windows as well.

# Installation Guide
`MATLAB`, `R`, `Tableau`, `Tableau Prep Builder`, `ANSWER-TIMES`, `GAMS`, `GAMS-CPLEX` have a complete installation guide on their official website.

`LHS sampling program` does not need to be installed, just write the input file according to the format and drag it to the `LHS.EXE` icon (or execute `LHS.EXE input` in `CMD`).

Users should install the following packages, from an `R` terminal:
`install.packages(c('reshape2','ggplot2','ggridges','ggsci','openxlsx','gridExtra'))`

# Demo
## Medium Case Generation
Run the `DEMO` program in `ANSWER-TIMES` to generate the `.dd` file (database file), `.gen` file (TIMES command line file), and `.run` file (GAMS execution file) of the medium case. `DEMO` can be found at https://iea-etsap.org/index.php/documentation.

## Uncertainty Case Generation
drag `input` file to the `LHS.EXE` icon (or execute `LHS.EXE input` in `CMD`). Normally the `output` file will be generated.

In our real study, we kept only the `LATIN HYPERCUBE SAMPLE INPUT VECTORS` part of the `output`, and removed the rest for subsequent processing. The file is named `output-final`.

Make three copies of `output-final` and name them `PEAK20`, `PEAK25`, and `PEAK30` respectively.

The files containing the uncertainty parameters can be obtained by modifying the `.dd` file, `.gen` file and `.run` file of the medium case using `MATLAB`. As an example, the PEAK30 scenario is able to automatically perform 1,000 cases by running the `peak30.m`.

Note: The data involved in this study are given in the supplementary information, and other data in the database are not open source for the time being due to confidentiality and other reasons. Therefore the excel sheet `mca-peak30.xlsx` containing the raw database data is not available as a demo in this step.

## Data Analysis & Processing
After getting all the data, after `Tableau Prep Builder` processing (not necessary, but can speed up the subsequent process), the data stored in `.xlsx` is transformed into database data that can be read and written quickly.

In `Tableau`, we do most of the visualization work by setting up pivot tables to show the results of the model.

For Figure 4, kernel density estimation is involved, which we implemented in `R` via the `ggplot2` library. We exported the values of the variables of interest through `Tableau` and saved them as files such as `Solar.csv` for subsequent processing. Taking the installed solar capacity as an example, by reading the `Solar.csv` data, the program automatically plots the kernel density estimates for different scenarios.
