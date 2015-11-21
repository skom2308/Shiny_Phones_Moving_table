library(shiny)
library(datasets)

# Define UI for slider demo application
shinyUI(fluidPage(
        
        #  Application title
        titlePanel("Animation: Telephones by Region"),
        
        # Sidebar with sliders that demonstrate various available
        # options
        sidebarLayout(
                sidebarPanel(
                        
                        sliderInput("year", "Year", 1956, 1961, 1,
                                    step = 1, animate=
                                            animationOptions(interval=666, loop=TRUE)),
                        hr(),
                        helpText("Click on the play button to see animation or move Year slider manually to se Telephones by Region between 1956 and 1961"),
                        helpText("Data from AT&T (1961) The World's Telephones."),
                        helpText("Prepared by José Carrasquero as part of the course project in 'Developing Data Products' in the 'Data Science Specialization' of the Johns Hopkins University")
                ),
                
                # Show a table summarizing the values entered
                mainPanel(
                        h4("Barplot: Number of Telephones by Region Per Year (1956-1961)"),
                        plotOutput("phonePlot"),
                        
                        h4("Values (Thousands)"),
                        tableOutput("view")
                        
                )
                
        )
))