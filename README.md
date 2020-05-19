# Food-Trend-Detection
Goal

The goal of this project is to detect the emerging trends of food consumption from social media data.
Early detection of emerging food trends can bring great business opportunities. Recently, a lot of food-related discussions occur on social media platforms such as Twitter and Facebook. Therefore, social media posts may contain potentially valuable and real-time source of intelligence that can be leveraged by retailers to better serve its customers.


About the Dataset

The dataset contains over 4 million Facebook posts from 2011 to 2015.


Method

I built a document term matrix that count the frequency of terms occur in the corpus. The rows represent the documents which is the timestamp (month and year) and the columns represent terms. I transfer the document term matrix into a data frame and order the data frame in the correct time sequence for future use. Next, I used visual inspection to detect the changes in those timeseries. I would like to plot the tends of number of post mention certain food each month.
