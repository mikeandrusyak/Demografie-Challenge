

Opportunities for integration through homeownership and their correlation with education level and employment rate
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

**Report/main.Rmd**
  - Contains all graphs and is a report to the challenge

.gitignore
  - This file specifies intentionally untracked files that Git should ignore. It includes temporary files, logs, and package-specific data.

Demografie-Challenge.Rproj
	- The RStudio project file for managing the workspace and configurations for this project.

renv.lock
	- A lock file generated by the {renv} package to ensure reproducibility of the R environment, locking all package versions used in the project.

2. Data Preparation and Cleaning Scripts

Renaming_Columns.R
	- An R script version of Renamed_Columns.Rmd for use in automated workflows.

analysing_missing_values.Rmd
	- File that automatically checks if selected variables exist in all years.
  - Builds a table and graph to display the presence of variables in the raw data.
  - Saves the selected list of variables for further work.

merging_data.Rmd 
  – Merges multiple data sets into three main sets for further analysis.
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

Way 0:
- Open **main.html** file.

Way 1:
- Unzip our zip data file (was sent per mail) to folder Report.
  - Check the path **Report/data/** and here two files **zp_merged_data.csv** and **hh_merged_data.csv**
- Run **Report/main.Rmd** to get report and charts. 
- Use knit to regenerate html file.

Way 2:
Before start of running the script, place the raw data in the “data/strukturerhebung/years_SE_RS_CSV” .
	- Run **analysing_missing_values.Rmd** to create list of selected variables.
	- Run **merging_data.Rmd** to generate csv files with used variables.
	- Run	**Report.main.Rmd** to get final report.

Purpose of the Project:

This repository is part of the Demografie Challenge, which focuses on analyzing demographic trends and their impact on various socio-economic factors. The main objectives are:
	-	Preparing and cleaning demographic data.
	-	Standardizing datasets for reproducibility.
	-	Creating a unified dataset for further statistical and visual analysis.
	- Find answers to researched question.
     
System Requirements:
	- 	R version: >= 4.0.0
	-	RStudio: Latest version recommended
	-	Packages:
	•	dplyr
	•	tidyr
	•	ggplot2
	•	renv
