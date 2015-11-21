library(shiny)
library(datasets)


shinyServer(function(input, output) {
        
        output$phonePlot <- renderPlot({
                barplot(WorldPhones[input$year-1954,], ylim=c(0,80000),
                        ylab="Number of Telephones (Thousands)",xlab="Region", main=paste('Year: ', input$year),
                        col='royalblue4')
        })
        
        output$view <- renderTable({
                head(tail(WorldPhones,6)*1,input$year-1955)
        })

})