# decode_lists.R
for_numeric_variables <- list(
  "-9" = NA,
  "-8" = NA,
  "-7" = NA
)

occupation_isco_agg <- list(
  "1" = "Managers",
  "2" = "Academic jobs",
  "3" = "Technicians",
  "4" = "Clerical workers",
  "5" = "Service and sales",
  "6" = "Agriculture workers",
  "7" = "Craft workers",
  "8" = "Machine operators",
  "9" = "Elementary jobs",
  "0" = "Armed forces",
  "-9" = NA,
  "-8" = NA,
  "-7" = NA
)
citizen <- list(
  "1" = "No",
  "2" = "Yes",
  "-6" = NA,
  "-8" = NA,
  "-9" = NA
)

owner_ship <- list(
  "1" = "Tenant",                
  "2" = "Cooperative member",      
  "3" = "Condominium owner",       
  "4" = "House owner",            
  "5" = "Other situation",
  "-8" = NA,
  "-9" = NA
)

nationality_conti <- list(
  "1" = "Switzerland",
  "2" = "EU member",
  "3" = "EFTA member",
  "4" = "Other Europe",
  "5" = "Africa",
  "6" = "North America",
  "7" = "Latin America",
  "8" = "Asia",
  "9" = "Oceania",
  "-1" = "Stateless",
  "-6" = NA,
  "-8" = NA,
  "-9" = NA
)

nationality_category <- list(
  "1" = "Swiss",
  "2" = "Foreign",
  "-8" = NA,
  "-9" = NA
)

education_level <- list(
  "1" = "None", 
  "2" = "Compulsory", 
  "3" = "Compulsory", 
  "4" = "Secondary",
  "5" = "Secondary", 
  "6" = "Basic VET", 
  "7" = "Secondary",
  "8" = "Secondary", 
  "9" = "Higher VET", 
  "10" = "Higher VET",
  "11" = "Higher Ed", 
  "12" = "Higher Ed",   
  "13" = "Higher Ed",
  "-8" = NA,
  "-9" = NA
)

in_edu <- list(
  "0" = "Not In Education",
  "1" = "In Education",
  "-8" = NA,
  "-9" = NA
)

activity_status <- list(
  "1" = "Full Time", 
  "2" = "Part Time", 
  "3" = "Part Time", 
  "4" = "Part Time",
  "5" = "Unemployed", 
  "6" = "Unemployed", 
  "7" = "Unemployed",
  "8" = "Unemployed", 
  "9" = "Unemployed",
  "-8" = NA,
  "-9" = NA
)

permit <- list(
  "1" = "Permit A",
  "2" = "Permit B",
  "3" = "Permit C",
  "4" = "Permit Ci",
  "5" = "Permit F",
  "6" = "Permit G",
  "7" = "Permit L",
  "8" = "Permit N",
  "9" = "Permit S",
  "10" = "Registered",
  "11" = "Diplomat",
  "12" = "Diplomat",
  "13" = NA,
  "-2" = "Swiss",
  "-6" = NA,
  "-8" = NA,
  "-9" = NA
)