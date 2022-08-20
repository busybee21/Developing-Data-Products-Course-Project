library(shiny)  ## ui.R
library(HistData)

shinyUI(fluidPage(
     titlePanel("Prediction of Child Height from GaltonFamilies dataset"),
     sidebarLayout(
          sidebarPanel(
               sliderInput("sliderfather","Value of the Father's Height",55,80,value = 65),
               sliderInput("slidermother","Value of the Mother's Height",55,80,value = 60),
               
          ),
          mainPanel(
               tabsetPanel(type = "tabs",
                           tabPanel("Main Output",
                                    h3("Summary of Model Coefficients"),
                                    textOutput("fit.summary"),
                                    
                                    h3("Predicted Child's Height:"),
                                    textOutput("predicted")),
                           tabPanel("Documentation",
                                    h3("GaltonFamilies dataset has been considered"),
                                    helpText("This data set lists the individual observations for 934 children in 205 families on which Galton (1886) based his cross-tabulation."),
                                    h3("For given heights of father and mother, child's height would be predicted"),
                                    helpText("Depending library for this dataset is UsingR")),
                           
               )
          ))
))

