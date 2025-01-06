
box_plot <- function(df,cat,value){
  df %>% 
    filter({{cat}}>0 & {{value}}> 0) %>% 
    ggplot(aes(x={{cat}}, y={{value}}, fill = {{cat}}))+
    geom_boxplot(na.rm = TRUE)+
    theme(
      axis.text.x = element_text(angle = 45, hjust = 1, size = 10), 
      axis.text.y = element_text(size = 10),                       
      legend.text = element_text(size = 10),                    
      plot.margin = margin(10, 20, 10, 10)  
    )
}

work_time_by_two_categories <- function(df, cat1, cat2, sort_levels = NULL){
  for (year in 2010:2021){
    data_filtered <- {{df}} %>% 
      filter(YEAR_QUIZ == year) %>% 
      filter(!is.na({{cat1}}) & TIMEWORKEDPERWEEKSUM > 0 
             & !is.na({{cat2}})) %>% 
      group_by({{cat1}}, {{cat2}})
    if (!is.null(sort_levels)) {
      data_filtered <- data_filtered %>%  mutate({{cat2}} := factor({{cat2}},levels = sort_levels))
    } 
    chart <- data_filtered %>% 
      summarise(average_time_worked = median(TIMEWORKEDPERWEEKSUM, na.rm = TRUE), .groups = "drop") %>%
      ggplot(aes(x={{cat2}}, y = average_time_worked, fill={{cat1}}))+
      geom_bar(stat = "identity", position = "dodge")+
      geom_text(aes(label = round(average_time_worked, 1)),
                position = position_dodge(width = 0.9), 
                vjust = 2,
                size = 3) +
      theme(
        axis.text.x = element_text(angle = 45, hjust = 1, size = 10), 
        axis.text.y = element_text(size = 10),                       
        legend.text = element_text(size = 10),                    
        plot.margin = margin(10, 20, 10, 10)  
      )
    print(chart)
  }
}

generate_charts_by_occupation <- function(data, occupation_column, nationality_column) {
  
  for (year in 2010:2021) {
    chart <- data %>% 
      filter(YEAR_QUIZ == year & 
               !is.na({{ occupation_column }}) & 
               !is.na({{ nationality_column }})) %>% 
      ggplot(aes(x = {{ occupation_column }}, fill = {{ nationality_column }})) +
      geom_bar(position = "stack", na.rm = TRUE) +
      geom_text(
        aes(label = scales::percent(
          round(after_stat(count) / tapply(after_stat(count), 
                                           after_stat(x), sum)[after_stat(x)], 2))),
        stat = "count",
        position = position_stack(vjust = 0.5),
        size = 3
      ) +
      labs(
        title = paste("Year:", year),
        x = "Occupation",
        y = "Proportion"
      ) +
      theme(
        axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
        axis.text.y = element_text(size = 10),
        legend.text = element_text(size = 10),
        plot.margin = margin(10, 20, 10, 10)
      )
    
    print(chart)
  }
}