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
  "-9" = NA
)

nationality_category <- list(
  "1" = "Swiss",
  "2" = "Foreign",
  "-9" = NA
)

education_level <- list(
  "1" = "No schooling",
  "2" = "Basic school",
  "3" = "Vocational school",
  "4" = "High school",
  "5" = "Technical school",
  "6" = "University",
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