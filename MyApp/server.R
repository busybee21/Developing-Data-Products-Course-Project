library(shiny)
library(HistData)

shinyServer(function(input,output){
     model<-lm(childHeight~father+mother,data=GaltonFamilies)
     
     model.pred<-reactive({
          father.input<-input$sliderfather
          mother.input<-input$slidermother
          predict(model,newdata=data.frame(father=father.input,mother=mother.input))
     })
     output$fit.summary<-renderText({
         model$coefficients
     })
     output$predicted<-renderText({
          model.pred()
     })
})
