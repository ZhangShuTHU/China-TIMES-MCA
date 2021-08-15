# China-TIMES-MCA Model
# Repo Contents
1. MATLAB data transfer code
2. R visualization code
3. LHS sampling program and documentation and input data

# System Requirements
## Hardware Requirements
Hardware needed depends on the size and complexity of models, but here is a configuration suitable for typical TIMES models:
CPU: Minimum 4 cores are recommended. 8-16 would be desirable for larger models.
RAM: 4-8 GB is enough, but GAMS needs more RAM for larger models. 32 GB would accomodate most models.
HDD: 500GB-1TB free space for Veda and GAMS files.

Note: We tested our study on a PC with Intel i7-9700, 32GB RAM, 1T SSD PC. The performance of the computer and solver can have a significant impact on the computing time. 

## Software Requirements
MATLAB: R2021a (https://www.mathworks.com/)
R: 4.1.0 (https://www.r-project.org/)
Tableau: 2021.2 (https://www.tableau.com/)
Tableau Prep Builder: 2021.2 (https://www.tableau.com/)
LHS sampling program: 1.0 (The installation package is in this repository)
ANSWER-TIMES: 6.9.7 (https://iea-etsap.org/index.php/etsap-tools/data-handling-shells/answer)
GAMS: 35.2 (https://www.gams.com/)
GAMS-CPLEX: 20.1 (https://www.gams.com/)

## R dependencies
The installation package is in this repository
reshape2
ggplot2
ggridges
ggsci
openxlsx
gridExtra

## OS dependencies
Windows

Note: We tested our study on a Windows 10 64-bit PC. But theoretically, it should work on other versions of Windows as well.

# Installation Guide
MATLAB, R, Tableau, Tableau Prep Builder, ANSWER-TIMES, GAMS, GAMS-CPLEX have a complete installation guide on their official website.

LHS sampling program does not need to be installed, just write the input file according to the format and drag it to the LHS.EXE icon (or execute "LHS.EXE input" in CMD).

Users should install the following packages, from an R terminal:
install.packages(c('reshape2','ggplot2','ggridges','ggsci','openxlsx','gridExtra'))

# Demo
## Uncertainty Case Generation
drag "input" file to the LHS.EXE icon (or execute "LHS.EXE input" in CMD). Normally the "output" file will be generated.


