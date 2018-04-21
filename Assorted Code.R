# reduce whitespace and remove NULL records left over from previous deletions
df$FullText <- gsub("\\s+", " ", df$FullText, perl = TRUE)
df$FullText[df$FullText==""] <- NA
df <- na.omit(df)

# generate a document feature matrix
docFeatMatrix <- dfm(dfBankTexts[, 2],keptFeature= valWords,concatenator= " ")

# convert the dfm to a matrix, label rows with AutoID from dataset
featAdjMatrix <- as.matrix(docFeatMatrix)
origAutoId <- dfBankTexts$AutoID
rownames(featAdjMatrix) <- origAutoId

# lists all valid words from ValWords and their assoc. AutoID
docFeatList <- features(docFeatMatrix)

# create a stemmed, 2-skip,  2 to 3-gram Document-Feature-Matrix
dfmValWrd <- dfm(charVecTexts, keptFeatures = valWords, ngrams = 2:3, skip = 0:1)
dfValWrd <- as.data.frame(topfeatures(dfmValWrd, n = 5000))
colnames(dfValWrd) <- "Freq"
rName <- row.names(dfValWrd)
dfValWrd$ValWrd <- rName
row.names(dfValWrd) <- c(1:5000)

# generate four groups of valWords to reduce the discrete range of scale
vNeg <- valWordList$word[valWordList$score==-5|-4]
negWrd <- valWordList$word[valWordList$score==-3|-2|-1]
posWrd  <- valWordList$word[valWordList$score==3|2|1]
vPos  <- valWordList$word[valWordList$score==5|4]

# build tables of positive and negative sentences with scores
posResult <- as.data.frame(RateSent(posText, vNeg, negWrd, posWrd, vPos))
negResult <- as.data.frame(RateSent(negText, vNeg, negWrd, posWrd, vPos))
posResult <- cbind(posResult, 'posRes')
negResult <- cbind(negResult, 'negRes')
colnames(posResult) <- c('text', 'vNeg', 'neg', 'pos', 'vPos', 'sentiment')
colnames(negResult) <- c('text', 'vNeg', 'neg', 'pos', 'vPos', 'sentiment')

# aggregate the posResult and negResult tables to use in graphical plots
results <- rbind(posResult, negResult)
