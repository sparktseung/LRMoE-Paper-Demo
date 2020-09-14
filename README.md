---
title: Demo
---

This is a demo page.

1. [Generating Demo Data](./1-DemoDataGeneration/DemoDataGeneration-jekyll.html)








(Following are old code)


# LRMoE-Paper-Demo

- [Overview](#overview)
- [1-DemoDataGeneration](#1-demodatageneration)
- [2-DemoDataFitting](#2-demodatafitting)
- [3-RealDataPreliminary](#3-realdatapreliminary)
- [4-RealDataFitting](#4-realdatafitting)
- [5-RealDataResult](#5-realdataresult)

# Overview

This repository contains all demonstration code and results in the LRMoE paper. Information about the **LRMoE** package can be found on the [package repository](https://github.com/sparktseung/LRMoE). The following table displays a rough mapping of contents between this repository and the LRMoE paper. The files contained in each repo directory are listed in separate sections.

| Repo Directory        	| Paper Section 	| Description                                      	|
|:---------------------:	|:-------------:	|:------------------------------------------------:	|
| 0-LRMoEPaper           	|                	| Contains the LRMoE paper                        	|
| 1-DemoDataGeneration  	| 3             	| Generating `DemoData` in the package             	|
| 2-DemoDataFitting     	| 3             	| Fitting LRMoE to `DemoData`                      	|
| 3-RealDataPreliminary 	| 4.1, 4.2      	| Preliminary analysis of French auto data         	|
| 4-RealDataFitting     	| 4.3, 4.4      	| Fitting procedure and result of French auto data 	|
| 5-RealDataResult      	| 4.4, 4.5      	| Pricing, risk measures and model visualization   	|

**Points to note**:

- The plots in [2-DemoDataFitting](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/2-DemoDataFitting) are slightly different from the ones in the paper submitted, due to a change of simulation machanisms in `LRMoE::dataset.simulator`. The plots in the paper will be updated in subsequent revisions.

- Some code lines in the `.Rmd` files are slightly different from those in the paper submitted, mainly due to modification of the package functions and interface. These will also be updated in subsequent revisions.

- Due to the size of the French auto dataset (413,169 rows), the average run time for fitting one LRMoE model is around 5 hours. Hence, the `.Rmd` files do not contain any code to actually fit the model, and we have separately uploaded the fitting code and results (see [5-RealDataResult](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult)).

- For the same reason of runtime, the calculation of covariate influence in [5-RealDataResult](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult) / [RealDataResult.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/5-RealDataResult/RealDataResult.pdf) is also done on a subset of data, and the results on the entire dataset are also uploaded separately.

# 1-DemoDataGeneration

- [DemoDataGeneration.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/1-DemoDataGeneration/DemoDataGeneration.pdf): Contains a demonstration of the `LRMoE::dataset.simulator` function, and the generation process of `DemoData` dataset included in the **LRMoE** package.

- [DemoDataGeneration.Rmd](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/1-DemoDataGeneration/DemoDataGeneration.Rmd): R Markdown source file of DemoDataGeneration.pdf.

- `DemoData.RData`: Contains `DemoData`.

# 2-DemoDataFitting

- [DemoDataFitting.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/2-DemoDataFitting/DemoDataFitting.pdf): Contains a demonstration of the main fitting function `LRMoE::LRMoE.fit`.

- [DemoDataFitting.Rmd](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/2-DemoDataFitting/DemoDataFitting.Rmd): R Markdown source file of DemoDataFitting.pdf.

- `DemoDataTrueModel.Rda` / `DemoDataMisModel.Rda`: Contains fitting result correctly speficied / mis-specified models.

# 3-RealDataPreliminary

- [RealDataPreliminary.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/3-RealDataPreliminary/RealDataPreliminary.pdf): Contains preliminary analysis on a French auto insurance dataset included in [CASdatasets](http://cas.uqam.ca/), data formatting and parameter initialization using `LRMoE::cluster.mm.severity`.

- [RealDataPreliminary.Rmd](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/3-RealDataPreliminary/RealDataPreliminary.Rmd): R Markdown source file of RealDataPreliminary.pdf.

- `X.Rda`, `Y.Rda`: Formatted matrices from the original dataset, as needed by the fitting function.

- `RealDataInit3.Rda` / `RealDataInit4.Rda` / `RealDataInit5.Rda` / `RealDataInit6.Rda`: Contains parameter initialization for 3/4/5/6-component LRMoE models using the method of [Clustered Method of Moments](https://www.sciencedirect.com/science/article/pii/S0377042718302140).

# 4-RealDataFitting

- [ReadDataFitting.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/4-RealDataFitting/ReadDataFitting.pdf): Demonstrates how to fit LRMoE models in parallel by using the [doParallel](https://cran.r-project.org/web/packages/doParallel/index.html) package.

- [RealDataFitting.Rmd](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/4-RealDataFitting/ReadDataFitting.Rmd): R Markdown source file of RealDataFitting.pdf.

- `Make_RunList.R`, `model_list.Rda`: Code to generate a list of models to run in the LRMoE paper, and the `.Rda` file contaning that list.

# 5-RealDataResult

- [RealDataResult.pdf](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/5-RealDataResult/RealDataResult.pdf): Demonstrate how to use various pricing (`LRMoE::predict.`) and visualization (`LRMoE::plot.`) functions, as well as how to investigate covariate influences (`LRMoE::covinf.`).

- [RealDataResult.Rmd](https://github.com/sparktseung/LRMoE-Paper-Demo/blob/master/5-RealDataResult/RealDataResult.Rmd): R Markdown source file of RealDataResult.pdf.

- `X.Rda`, `Y.Rda`, `1_llblll.Rda`: Data and fitted model needed by the `.Rmd` file.

- [1-Runlist](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult/1-RunList): Code to generate a list of models to run in the LRMoE paper, and the `.Rda` file contaning that list.

- [2-RunResult](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult/2-RunResult): Contains all fitted results in the LRMoE paper, stored in subfolders by the number of components. `.txt` files contain intermediate printout of parameter update, and `.Rda` files contain the fitted model.

- [3-SimAggreLoss](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult/3-SimAggreLoss): Simulation result of aggregate loss of all 413,169 policyholders. `SimAggreLoss.R` is the simulation code (also done in parallel), and each `.Rda` file contains 50 simulation scenarios.

- [4-CovInfResult](https://github.com/sparktseung/LRMoE-Paper-Demo/tree/master/5-RealDataResult/4-CovInfResult): Results of the influence of covariates. For discrete covariates, the results are aggregated in csv files, and the CarAge folder contains results of the covariate CarAge (The `.txt` files contain mean, 90%-VaR and 99%-VaR and the `_CTE.txt` files contain 90%-CTE and 90%-CTE).








