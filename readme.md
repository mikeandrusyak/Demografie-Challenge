
===================================================================
Challenges to Immigrant Integration in Switzerland
===================================================================

Authors: 
  - Mykhailo Andrusiak (FHNW University)
  - Harmanjot Singh (FHNW University)
  - Gokce Yaren Demir (FHNW University)
  - Halka Ivan (FHNW University)
	
	

Date: January 13, 2025

-------------------------------------------------------------------
Contents of the Repository:
-------------------------------------------------------------------

1. Core Files

.gitignore
- This file specifies intentionally untracked files that Git should ignore. It includes temporary files, logs, and package-specific data.

Demografie-Challenge.Rproj
	- The RStudio project file for managing the workspace and configurations for this project.

renv.lock
	- A lock file generated by the {renv} package to ensure reproducibility of the R environment, locking all package versions used in the project.

2. Data Preparation and Cleaning Scripts

Renaming_Columns.R
	- An R script version of Renamed_Columns.Rmd for use in automated workflows.

getting_relevant_data.Rmd
	- An R Markdown file that filters and selects the relevant variables for the analysis.
- Focuses on extracting meaningful subsets of the data.

merging_data.Rmd
	- Combines multiple datasets into a unified dataset for further analysis.
	- Includes steps to ensure data consistency and handle missing values.

-------------------------------------------------------------------
Steps to Reproduce the Report:
-------------------------------------------------------------------

1. Set Up the Environment
	-	Clone or download this repository to your local machine.
	-	Open the project in RStudio using Demografie-Challenge.Rproj.
	-	Restore the R environment using {renv}:
     renv::restore()
     
2. Execute the Scripts

Before start of running the script, place the raw data in the “data/strukturerhebung/years_SE_RS_CSV” .
	-	Start by running the data preparation scripts in the following order:
	•	merging_data.Rmd
	-	If needed, use Renaming_Columns.R for batch processing.

3. View and Analyze the Results
	-	Intermediate datasets will be saved at each step for debugging and verification.
	-	Final cleaned data will be ready for visualization and analysis.

Purpose of the Project:

This repository is part of the Demografie Challenge, which focuses on analyzing demographic trends and their impact on various socio-economic factors. The main objectives are:
	-	Preparing and cleaning demographic data.
	-	Standardizing datasets for reproducibility.
	-	Creating a unified dataset for further statistical and visual analysis.
     
System Requirements:
	- 	R version: >= 4.0.0
	-	RStudio: Latest version recommended
	-	Packages:
	•	dplyr
	•	tidyr
	•	ggplot2
	•	renv