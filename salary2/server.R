library(shiny)
library(reshape2)
library(rCharts)
library(xlsx)

salaryData<-read.xlsx("data/salaryData.xlsx",header=TRUE,sheetIndex=1)


ComputeMean<-function(deg){
      temp <- salaryData[salaryData$Course==deg,]
      tempMean <- temp$Mean
      return(tempMean)
}

ComputeMedian<-function(deg){
      temp <- salaryData[salaryData$Course==deg,]
      tempMed <- temp$Median
      return(tempMed)
}

Compute25Percentile<-function(deg){
      temp <- salaryData[salaryData$Course==deg,]
      temp25 <- temp$X25th.Percentile
      return(temp25)
}

Compute75Percentile<-function(deg){
      temp <- salaryData[salaryData$Course==deg,]
      temp75 <- temp$X75th.Percentile
      return(temp75)
}


shinyServer(
      function(input, output) {
            output$oname <- renderPrint(
                  {input$name})
            output$odegree <- renderPrint(
                  {
                        input$goButton
                        isolate(                                                      
                        input$degree)
                  }) 
            
            output$oMean <- renderPrint(
                  {
                        input$goButton
                        isolate(
                        if(input$meanCI)
                        {
                              cat("Mean Salary:",ComputeMean(input$degree))
                        }
                        )
                  })
            output$PlotMean <- renderChart({
                  hb1 <- Highcharts$new()                  
                  
                  if(input$meanCI)
                  {                        
                  hb1 = hPlot(x = "Course", y = "Mean", data = salaryData, type = "bar")
                  hb1$addParams(dom ='PlotMean')
                  }
                  return(hb1)
                  
            })
            
            output$oMedian <- renderPrint(
            {
                  input$goButton
                  isolate(
                  if(input$medCI)
                  {
                        cat("Median Salary:",ComputeMedian(input$degree))
                  }
                  )
            })
            output$PlotMedian <- renderChart({
                  input$goButton                        
                  hb1 <- Highcharts$new()
                  if(input$medCI)
                  {                        
                        hb1 = hPlot(x = "Course", y = "Median", data = salaryData, type = "bar")
                        hb1$addParams(dom ='PlotMedian')
                  }
                  return(hb1)
            })

            output$oX25CI <- renderPrint(
            {
                  input$goButton
                  isolate(
                        if(input$X25CI)
                        {
                              cat("25th Percentile Salary:",Compute25Percentile(input$degree))
                        }
                  )
            })
            output$PlotX25 <- renderChart({
                  hb1 <- Highcharts$new()                  
                  
                  if(input$X25CI)
                  {                        
                        hb1 = hPlot(x = "Course", y = "X25th.Percentile", data = salaryData, type = "bar")
                        hb1$addParams(dom ='PlotX25')
                  }
                  return(hb1)
                  
            })

            
            output$oX75CI <- renderPrint(
            {
                  input$goButton
                  isolate(
                        if(input$X75CI)
                        {
                              cat("75th Percentile Salary:",Compute75Percentile(input$degree))
                        }
                  )
            })
            output$PlotX75 <- renderChart({
                  hb1 <- Highcharts$new()                  
                  
                  if(input$X75CI)
                  {                        
                        hb1 = hPlot(x = "Course", y = "X75th.Percentile", data = salaryData, type = "bar")
                        hb1$addParams(dom ='PlotX75')
                  }
                  return(hb1)
                  
            })

            
      }
)