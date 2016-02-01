Seattle AirBnb Price Suggestion Tool
========================================================
author: Alex Chang
date: 1/31/2016


Motivation and Data Source
========================================================
# Motivation
For the class product I have created a shiny app will allow user to get a suggested pricing based on the some feature of the unit user intend to rent out.
The motivation for this app is to use the data provided by AirBnb to creat a simple
app to allow users who are interested in providing their free room/unit to rent in AirBnb, but without any idea where to start.

Data Exploratory
========================================================
Looking at the correlation between the features
![plot of chunk unnamed-chunk-1](SeattleAirBnbSuggestedPrice-figure/unnamed-chunk-1-1.png)

Model
========================================================
After looking at the correlation between data, I have decided to fit the generalized linear model with the following formular

```r
model <- glm(price~accommodates+bedrooms+bathrooms+beds, data=data)
```
And the prediction can be calculated as the code below where each input is taken from the users

```r
predict(model, data.frame(accommodates=input$accommodates,
bathrooms=input$bedrooms,
bedrooms=input$bedrooms,
beds=input$beds))
```

Resources
========================================================
## Data Source
The data is provided by [Inside Airbnb](http://insideairbnb.com/get-the-data.html). THe app uses Seattle listing data for training the a generlize linear model.
## Shiny App
The app has been published to [Shinyapp.io](https://deenoo.shinyapps.io/SeattleAirBnbSuggestion/)
## Github
The code of the presentation and shiny app has been published to [Github](https://github.com/deenoo82/DevelopingDataProduct)
