Salary Information App
=============================
author: Jacky Wong Kae Perng
date: January 22 2015
transition: rotate

This Shiny app provides the means to compute the Mean, Median, 25th Percentile, 75th Percentile of Gross Monthly Salary based on Bachelor degree chosen by the user. 

The data is taken from the Graduate Employment Survey (GES) conducted by National University of Singapore. The dataset is publicly available at Data.Gov.SG website.

[App Location](https://wongkaeperng.shinyapps.io/salary2/) |
[GitHub](https://github.com/wongkaeperng) |
[RPubs](http://rpubs.com/wongkaeperng/54928) |
[Data Source](http://data.gov.sg/Metadata/SGMatadata.aspx?id=0319010000000013941E&mid=113198&t=TEXTUAL)

What problem is this app trying to solve?
=========================================
transition: rotate
- A graduate job seeker can make sense of the salary data by querying the  Mean, Median, 25th Percentile, 75th Percentile of Gross Monthly Salary based on the selected Bachelor degree. This provides critical information when it comes to negotiating for salary package in job market.
- Potential student who is considering which bachelor degree to choose can use this application to not only make sense of salary information based on degree but also compare the expected renumeration of each degree using the charts comparison feature.
- Recruiter/employer can use this tool to judge the competitiveness of their renumeration package offered to potential hires.

User Interface
==============
transition: rotate
Screenshot of the app:
![alt text](ui.png)
User will enter:
- Name
- Select the degree
- Select what salary information to compute and click GO!

***

Shiny App will:
- Display name entered
- Display degree selected
- Compute the selected salary information based on degree chosen.
- Provide a comparison charts for the salary information of all degrees. 
- User can mouse over the bar charts to see the actual salary figure.

Compare salary chart
====================
Below is a sample output of the chart produced. User can mouse over (try now) the bar charts to see the actual salary figure for each degree. Note: R Codes embeded in this slide, set to echo=False.

<script type='text/javascript' src=//code.jquery.com/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=//code.highcharts.com/highcharts.js></script>
<script type='text/javascript' src=//code.highcharts.com/highcharts-more.js"></script>
<script type='text/javascript' src=//code.highcharts.com/modules/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'PlotMedian' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "PlotMedian",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "Median" 
} 
} 
],
"series": [
 {
 "data": [
 [
 "Bachelor of Applied Science (Hons)",
          2900 
],
[
 "Bachelor of Arts",
          2800 
],
[
 "Bachelor of Arts (Hons)",
          3200 
],
[
 "Bachelor of Arts (Industrial Design)",
          2650 
],
[
 "Bachelor of Business Administration",
          3000 
],
[
 "Bachelor of Business Administration (Accountancy)",
          2700 
],
[
 "Bachelor of Business Administration (Accountancy) (Hons)",
          2800 
],
[
 "Bachelor of Business Administration (Hons)",
          3200 
],
[
 "Bachelor of Computing (Communications and Media)",
          3050 
],
[
 "Bachelor of Computing (Computer Science)",
          3425 
],
[
 "Bachelor of Computing (Electronic Commerce)",
          3080 
],
[
 "Bachelor of Computing (Information Systems)",
          3005 
],
[
 "Bachelor of Dental Surgery",
          4000 
],
[
 "Bachelor of Engineering (Bioengineering)",
          3000 
],
[
 "Bachelor of Engineering (Chemical Engineering)",
          3175 
],
[
 "Bachelor of Engineering (Civil Engineering)",
          3050 
],
[
 "Bachelor of Engineering (Computer Engineering)",
          3200 
],
[
 "Bachelor of Engineering (Electrical Engineering)",
          3200 
],
[
 "Bachelor of Engineering (Engineering Science)",
          3000 
],
[
 "Bachelor of Engineering (Environmental Engineering)",
          3110 
],
[
 "Bachelor of Engineering (Industrial and Systems Engineering)",
          3200 
],
[
 "Bachelor of Engineering (Materials Science and Engineering)",
          3000 
],
[
 "Bachelor of Engineering (Mechanical Engineering)",
          3225 
],
[
 "Bachelor of Laws (LLB) (Hons)",
          5000 
],
[
 "Bachelor of Medicine and Bachelor of Surgery (MBBS)",
          4500 
],
[
 "Bachelor of Science",
          2800 
],
[
 "Bachelor of Science (Hons)",
          3100 
],
[
 "Bachelor of Science (Nursing)",
          2950 
],
[
 "Bachelor of Science (Nursing) (Hons)",
          3025 
],
[
 "Bachelor of Science (Pharmacy) (Hons)",
          3500 
],
[
 "Bachelor of Science (Project and Facilities Management)",
          3000 
],
[
 "Bachelor of Science (Real Estate)",
          2900 
],
[
 "Bachelor of Social Sciences",
          3200 
] 
],
"type": "bar",
"marker": {
 "radius":              3 
} 
} 
],
"legend": {
 "enabled": false 
},
"xAxis": [
 {
 "title": {
 "text": "Course" 
},
"categories": [ "Bachelor of Applied Science (Hons)", "Bachelor of Arts", "Bachelor of Arts (Hons)", "Bachelor of Arts (Industrial Design)", "Bachelor of Business Administration", "Bachelor of Business Administration (Accountancy)", "Bachelor of Business Administration (Accountancy) (Hons)", "Bachelor of Business Administration (Hons)", "Bachelor of Computing (Communications and Media)", "Bachelor of Computing (Computer Science)", "Bachelor of Computing (Electronic Commerce)", "Bachelor of Computing (Information Systems)", "Bachelor of Dental Surgery", "Bachelor of Engineering (Bioengineering)", "Bachelor of Engineering (Chemical Engineering)", "Bachelor of Engineering (Civil Engineering)", "Bachelor of Engineering (Computer Engineering)", "Bachelor of Engineering (Electrical Engineering)", "Bachelor of Engineering (Engineering Science)", "Bachelor of Engineering (Environmental Engineering)", "Bachelor of Engineering (Industrial and Systems Engineering)", "Bachelor of Engineering (Materials Science and Engineering)", "Bachelor of Engineering (Mechanical Engineering)", "Bachelor of Laws (LLB) (Hons)", "Bachelor of Medicine and Bachelor of Surgery (MBBS)", "Bachelor of Science", "Bachelor of Science (Hons)", "Bachelor of Science (Nursing)", "Bachelor of Science (Nursing) (Hons)", "Bachelor of Science (Pharmacy) (Hons)", "Bachelor of Science (Project and Facilities Management)", "Bachelor of Science (Real Estate)", "Bachelor of Social Sciences" ] 
} 
],
"subtitle": {
 "text": null 
},
"id": "PlotMedian",
"chart": {
 "renderTo": "PlotMedian" 
} 
});
        });
    })(jQuery);
</script>

Result & Documentation Tab
==========================
In addition to chart, the result will be displayed as follow:
![alt text](result.png)

If you have further feedback, please contact me at wongkaeperng@hotmail.com 
***
User can also click on the documentation tab to see the documentation:
![alt text](doc.png)

Thank you. And hope you find the apps useful! :)

