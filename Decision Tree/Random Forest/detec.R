kddcup.testdata <- read.csv("~/R workspace/Decision Tree/Random Forest/a", header=FALSE)
a <- read.csv("~/R workspace/Decision Tree/Random Forest/test", header=FALSE)

rf1 <- randomForest(V42 ~ ., kddcup.testdata, ntree=50, norm.votes=FALSE)
set.seed(4543)
getTree(rf1,k=1,labelVar=TRUE)
rf1.pred <- predict(rf1, a)
table(observed=kddcup.testdata$V42, predicted = rf1.pred)