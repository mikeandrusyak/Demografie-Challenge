library(dplyr)

# Function to rename columns across multiple data frames in a list
rename_columns <- function(data_list, rename_mappings) {
  # Loop through each data frame in the list
  for (year in names(data_list)) {
    # Ensure the year data frame isn't NULL
    if (!is.null(data_list[[year]])) {
      # Loop through each old column name in the renaming mappings
      for (old_name in names(rename_mappings)) {
        new_name <- rename_mappings[[old_name]]
        
        # Check if the old name exists in the data frame for that year
        if (old_name %in% names(data_list[[year]])) {
          # Rename the column using rename_with for safety with dynamic names
          data_list[[year]] <- data_list[[year]] %>%
            rename_with(~ new_name, .cols = old_name)
          
          # Print a message to confirm renaming (optional)
          message(paste("Renamed", old_name, "to", new_name, "in year", year))
        }
      }
    }
  }
  return(data_list)
}