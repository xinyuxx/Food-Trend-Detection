rm(list = ls())
library(tm)
library(NMF)
library(stringr)
library(text2vec)

# Corpus Setting up
docs<-Corpus(DirSource (c('fb2011','fb2012','fb2013','fb2014','fb2015')))

# build dtm
dtm.control = list(tolower=T, removePunctuation=T, 
                   removeNumbers=T,stemming=F)
dtm.full = DocumentTermMatrix(docs, control=dtm.control)
X = as.matrix(dtm.full)

# convert the dtm to dataframe
df_dtm = data.frame(X)
#order the dataframe in the time sequence
ordered_df <- df_dtm[str_sort(rownames(df_dtm), numeric = TRUE),]
# construct the row lable vector
row_name = c()
for (i in 2011:2015){
  for (j in 1:12){
    row_name=append(row_name, paste0(toString(i),'-',toString(j)))
  }
} 

# plot the 'Number of Post Mention Cauliflower Each Month'
plot(ordered_df[ ,'cauliflower'],type='l', axes=FALSE,xlab = 'time',ylab = 'freq',
     main = 'Number of Post Mention Cauliflower Each Month')
axis(2)
axis(1, at=seq_along(ordered_df[ ,'cauliflower']),labels=row_name, las=2)

# plot the 'Number of Post Mention Pumpkin Each Month
plot(ordered_df[ ,'pumpkin'],type='l', axes=FALSE,xlab = 'time',ylab = 'freq',
     main = 'Number of Post Mention Pumpkin Each Month')
axis(2)
axis(1, at=seq_along(ordered_df[ ,'cauliflower']),labels=row_name, las=2)

# plot the 'Number of Post Mention Zucchini Each Month
plot(ordered_df[ ,'zucchini'],type='l', axes=FALSE,xlab = 'time',ylab = 'freq',
     main = 'Number of Post Mention Zucchini Each Month')
axis(2)
axis(1, at=seq_along(ordered_df[ ,'zucchini']),labels=row_name, las=2)
