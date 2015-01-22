Salary Information Enquiry Application (Shiny App)
==================================================

This Shiny app provides the means to compute the Mean, Median, 25th Percentile, 75th Percentile of Gross Monthly Salary based on Bacherlor degree chosen. The data is taken from the Graduate Employment Survey (GES) conducted by National University of Singapore. The survey data is from 2013 batch of students. It is conducted annually to survey the employment conditions of graduates about six months after their final examinations.

Motivations
===========

To make sense of Salary Information, a graduate can use the application to query for mean, meadian, 25th & 75th percentile of the salary by entering the Bachelor degree that the graduate is interested in. 

The application will not only compute the figures but also provide comparison charts such that the graduate can constrast the salary with that from other degrees. 

Similarly, an potential student who is deciding on which Bachelor Degree to take can use this application to get an informed insights on the type of salary one can expect from a particular Bachelor Degree and its comparison with other Degrees.

Instructions to Run the Application
===================================
The Shiny app takes input from the user, namely: Name, Degree and the type of salary information the user is interested in.

When the user clicks GO!, the application will perform the following:

Compute Mean, Median, 25th Percentile, 75th Percentile of the Gross Salary figure based on the Bachelor degree the user chose.

Using HIGHCHARTS, the app will also draw bar charts to contrast the different salary by various bachelor degrees. User can mouse over the barcharts to see the actual figure.

User can choose to uncheck the information that the user does not want, e.g. if he/she does not want to see 75th & 25th Percentile, he/she can uncheck the checkbox option and click GO! The system will not compute those option in which the user has unchecked.

Output
=======
To view the results, user has to click on the Results tab. To view documentation, user has to click Documentation tab. The Tab options are allocated above.

DataSource
===========
Data taken from Graduate Employment Survey by National University of Singapore. The dataset is publicly available at Data.Gov.SG website.

Source: Graduate Employment Data
http://data.gov.sg/Metadata/SGMatadata.aspx?id=0319010000000013941E&mid=113198&t=TEXTUAL 


