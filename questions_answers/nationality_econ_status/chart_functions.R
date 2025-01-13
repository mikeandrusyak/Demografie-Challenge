# chart_functions.R
distribution_categorical <- function(df, var, title){
  ggplot(df, aes(x = {{ var }})) +
    geom_bar(fill = "lightblue", color = "black") +
    ggtitle(paste0("Distribution by ", title)) +
    xlab("Category") +
    ylab("Count") +
    theme(
      axis.text.x = element_text(angle = 45, hjust = 1, size = 10), 
      axis.text.y = element_text(size = 10),                       
      legend.text = element_text(size = 10),                    
      plot.margin = margin(10, 20, 10, 10)  
    )
}

distribution_numeric <- function(df, var, litle_var){
  df %>% filter(!is.na({{var}})) %>% 
    ggplot(aes(x = {{var}})) +
    geom_density(fill = "skyblue", alpha = 0.5) +  
    facet_grid(. ~ NATIONALITYCAT)+
    labs(title = paste0("Distribution by ", litle_var), x = "distribution", y = "density") +
    theme_minimal(base_size = 14)
} 

decode <- function(df, var, decode_mapping) {
  for (key in names(decode_mapping)) {
    value <- decode_mapping[[key]]
    df <- df %>%
      mutate({{ var }} := case_match(
        as.character({{ var }}),
        key ~ value,
        .default = as.character({{ var }})
      ))
  }
  df <- df %>%
    mutate({{ var }} := as.factor({{ var }}))
  return(df)
}