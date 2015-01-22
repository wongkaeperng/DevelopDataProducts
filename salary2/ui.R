library(shiny)
library(rCharts)
require(rCharts)

shinyUI(pageWithSidebar(
      headerPanel("Salary Information (based on your Bachelor Degree)"),
      sidebarPanel(
            h3('Enter details and click GO!'),
            textInput(inputId="name", label="Enter Your Name:"),
            selectInput(inputId="degree", label="Bachelor Degree", width="300px",
                        choices=c("Bachelor of Applied Science (Hons)","Bachelor of Arts","Bachelor of Arts (Hons)",
                                  "Bachelor of Arts (Industrial Design)","Bachelor of Business Administration",
                                  "Bachelor of Business Administration (Accountancy)",
                                  "Bachelor of Business Administration (Accountancy) (Hons)",
                                  "Bachelor of Business Administration (Hons)",
                                  "Bachelor of Computing (Communications and Media)",
                                  "Bachelor of Computing (Computer Science)",
                                  "Bachelor of Computing (Electronic Commerce)",
                                  "Bachelor of Computing (Information Systems)",
                                  "Bachelor of Dental Surgery",
                                  "Bachelor of Engineering (Bioengineering)",
                                  "Bachelor of Engineering (Chemical Engineering)",
                                  "Bachelor of Engineering (Civil Engineering)",
                                  "Bachelor of Engineering (Computer Engineering)",
                                  "Bachelor of Engineering (Electrical Engineering)",
                                  "Bachelor of Engineering (Engineering Science)",
                                  "Bachelor of Engineering (Environmental Engineering)",
                                  "Bachelor of Engineering (Industrial and Systems Engineering)",
                                  "Bachelor of Engineering (Materials Science and Engineering)",
                                  "Bachelor of Engineering (Mechanical Engineering)",
                                  "Bachelor of Laws (LLB) (Hons)",
                                  "Bachelor of Medicine and Bachelor of Surgery (MBBS)",
                                  "Bachelor of Science",
                                  "Bachelor of Science (Hons)",
                                  "Bachelor of Science (Nursing)",
                                  "Bachelor of Science (Nursing) (Hons)",
                                  "Bachelor of Science (Pharmacy) (Hons)",
                                  "Bachelor of Science (Project and Facilities Management)",
                                  "Bachelor of Science (Real Estate)",
                                  "Bachelor of Social Sciences"
                                  ),                        
                        multiple = FALSE,selected="Bachelor of Laws (LLB) (Hons)"),
            p('Select the gross monthly salary information you are interested in:'),
            checkboxInput(inputId = "meanCI", label = "Mean Salary",value=TRUE),
            checkboxInput(inputId = "medCI", label = "Median Salary",value=TRUE),
            checkboxInput(inputId = "X25CI", label = "25th Percentile Salary",value=TRUE),
            checkboxInput(inputId = "X75CI", label = "75th Percentile Salary",value=TRUE),
            actionButton("goButton","Go!"),
            h5('Note: Data taken from Graduate Employment Survey by National University of Singapore.'),
            p('The data is publicly available at Data.Gov.SG website.'),
            p("Source: ", a("Graduate Employment Data", 
                            href = "http://data.gov.sg/Metadata/SGMatadata.aspx?id=0319010000000013941E&mid=113198&t=TEXTUAL"))
      ),
      mainPanel(
            
            tabsetPanel(
                  tabPanel('Results',
                           h4('Welcome'),
                           verbatimTextOutput("oname"),
                           h4('You have chosen bachelor degree as:'),
                           verbatimTextOutput("odegree"),
                           h4('You are interested in the following information about gross monthly salary:'),
                           verbatimTextOutput("oMean"),
                           verbatimTextOutput("oMedian"),            
                           verbatimTextOutput("oX25CI"),            
                           verbatimTextOutput("oX75CI"),                        
                           h4('Comparison Charts:'),
                           showOutput("PlotMean","highcharts"),
                           showOutput("PlotMedian","highcharts"),
                           showOutput("PlotX25","highcharts"),
                           showOutput("PlotX75","highcharts")                           
                  ),
                  tabPanel('Documentation'),
                  h4('Introduction'),
                  p('This Shiny app provides the means to compute the Mean, Median, 25th Percentile, 75th Percentile of Gross Monthly Salary
                    based on Bacherlor degree chosen. The data is taken from the Graduate Employment Survey (GES) conducted by National University of Singapore.
                    The survey data is from 2013 batch of students. It is conducted annually to survey the employment conditions of graduates about six months after their final examinations.'),
                  h4('Instructions to run the application'),
                  p('The Shiny app takes input from the user, namely: Name, Degree and the type of salary information the user is interested in.'),
                  p('When the user clicks GO!, the application will perform the following:'),
                  p('Compute Mean, Median, 25th Percentile, 75th Percentile of the Gross Salary figure based on the Bachelor degree the user chose.'),
                  p('Using HIGHCHARTS, the app will also draw bar charts to contrast the different salary by various bachelor degrees. User can mouse over the barcharts to see the actual figure.'),
                  p('User can choose to uncheck the information that the user does not want, e.g. if he/she does not want to see 75th & 25th Percentile,
                    he/she can uncheck the checkbox option and click GO! The system will not compute those option in which the user has unchecked.'),                  
                  h4('Output'),
                  p('To view the results, user has to click on the Results tab. To view documentation, user has to click Documentation tab.
                    The Tab options are allocated above.'),
                  h4('Datasource'),
                  p('Data taken from Graduate Employment Survey by National University of Singapore.
                    The dataset is publicly available at Data.Gov.SG website.'),
                  p("Source: ", a("Graduate Employment Data", 
                                  href = "http://data.gov.sg/Metadata/SGMatadata.aspx?id=0319010000000013941E&mid=113198&t=TEXTUAL"))
                  
                  )
            
      )
))
