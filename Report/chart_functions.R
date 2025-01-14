# chart_functions.R
distribution_categorical <- function(df, var, title){
  ggplot(df, aes(x = {{ var }})) +
    geom_bar(fill = "lightblue", color = "black") +
    scale_fill_brewer(palette = "Spectral")+
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
    scale_fill_brewer(palette = "Spectral")+
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

create_proportional_plot <- function(data, group_var, fill_var, y_var, title, x_label, y_label, facet_var = NULL) {
  summarized_data <- data %>%
    group_by(across(all_of(c(group_var, fill_var, facet_var)))) %>%
    summarise(count = n(), .groups = "drop") %>%
    group_by(across(all_of(c(group_var, facet_var)))) %>%
    mutate(proportion = count / sum(count) * 100)
  
  plot <- ggplot(summarized_data, aes_string(x = group_var, y = "proportion", fill = fill_var)) +
    geom_bar(stat = "identity", position = "fill") +
    geom_text(
      aes(label = sprintf("%.1f%%", proportion)), 
      position = position_fill(vjust = 0.5),
      size = 3,
      color = "black"
    ) +
    scale_fill_brewer(palette = "Spectral")+
    theme(
      axis.text.x = element_text(angle = 45, hjust = 1), 
      axis.line = element_line(size = 1.5)
    ) +
    scale_fill_brewer(palette = "Accent") + 
    labs(
      title = title,
      x = x_label,
      y = y_label,
      fill = "Category"
    ) 
  
  if (!is.null(facet_var)) {
    plot <- plot + facet_wrap(as.formula(paste("~", facet_var)))
  }
  
  return(plot)
}