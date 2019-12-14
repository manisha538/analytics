# Logistic Regression 


data(BreastCancer, package="mlbench")

View(BreastCancer)

bc <-BreastCancer

str(bc)

summary(bc)

#Removing the rows with missing values

bc1 <- BreastCancer[complete.cases(BreastCancer), ]

str(bc1)

summary(bc1)

glm(Class ~ Cell.shape, family="binomial", data = bc1)



# remove id column as it is not required

bc1 <- bc1[,-1]



# convert factors to numeric

for(i in 1:9) {
  
  bc1[, i] <- as.numeric(as.character(bc1[, i]))
  
}



# Change Y values to 0 and 1

bc1$Class <- ifelse(bc1$Class == "malignant", 1, 0)

bc1$Class <- factor(bc1$Class, levels = c(0, 1))



#  Training and Test data.



library(caret)



trainData1 <- createDataPartition(bc1$Class, p=0.7, list = F)

trainData <- bc1[trainData1, ]

testData <- bc1[-trainData1, ]



# Class distribution of train data

table(trainData$Class)





#  Logistic Model

logitmod <- glm(Class ~ Cl.thickness + Cell.size + Cell.shape, family = "binomial", data=trainData)



summary(logitmod)



pred <- predict(logitmod, newdata = testData, type = "response")

pred



# Recode factors

y_pred_num <- ifelse(pred > 0.5, 1, 0)

y_pred <- factor(y_pred_num, levels=c(0, 1))

y_act <- testData$Class



# Accuracy

mean(y_pred == y_act)


# 93.62%