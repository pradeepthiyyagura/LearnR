library(dplyr)
library(ggvis)
library(shiny)

keys_s <- left_right(10,1000, step= 50)
mtcars %>%
  ggvis(~wt, ~mpg ) %>%
  #mutate(disp= disp /61.0237) %>% #convert engine displacement to liters
  layer_points()
  add_tooltip(function(df) df$wt)
  
  
  mtcars %>% ggvis(~wt, ~mpg) %>%
    layer_smooths(span = input_slider(0,1, step=0.1)) %>%
    layer_smooths(span = 0.3, stroke := "red")