# Use help() for help 
# e.g. help(class) provides documentation on Object Classes

## Functions and Classes

a <- c(2, 6, 4, 5)
mode(a)
d <- matrix(c(a, 2, 2, 2, 1), nrow = 4, ncol = 2, byrow = FALSE)
d
mode(d)
class(d)
c <- c(2,3,4)
mean(c)
class(mean(c))

villages_in_hartford <- c("White River Junction", "Hartford (village)", "Quechee", "West Hartford", "Wilder")
cities
length(villages_in_hartford)
nchar(villages_in_hartford)
mode(villages_in_hartford)
class(villages_in_hartford)
rivers <- c("White River", "Connecticut River", "Mascoma River", "Ottauquechee River")
villages_in_hartford.rivers <- cbind(villages_in_hartford, rivers)
villages_in_hartford.rivers
# underlying data type is character
mode(villages_in_hartford.rivers)
# underlying data type is character but both are matrices
class(villages_in_hartford.rivers)
model.1 <- y ~ x1 + x2 + x1:x2
model.1
class(model.1)
terms(model.1)

a <- c(1,2,3,5,7,3,2,5,2)
sd_a <- sd(a)
sample_a <- length(a)
sd_a/sqrt(sample_a)
sd(a)/sqrt(length(a))
b <- c(3, 4, 5, 6, 7, 8)
StdErr <- function(vector) {
  se <- sd(vector)/sqrt(length(vector)) 
  return(se) }
edit(StdErr) # select save
StdErr(a)
StdErr(b)


## Linear Regression

# pro chessplayer ratings

chessplayer = read.table(file.choose(), header=TRUE, sep="\t") # select chessplayer.tab
chessplayer
summary(chessplayer)
plot(chessplayer$Rating)
x = 1: 100
y = chessplayer$Rating
abline(lm(y~x))
abline(2780, -1.5)

x = 1:100
y = rnorm(100, 1, 0.5)
plot(x,y)
abline(lm(y~x))
abline(1,0)

x = 1 : 1000
y = rnorm(1000, 1, 0.5)
plot(x,y)
abline(lm(y~x))

## Multiple Linear Regression

# a model for grades based on absences and SAT scores 

Grades <- c(82, 98, 76, 68, 84, 99, 67, 58, 50, 78)
Absences <- c(4, 2, 2, 3, 1, 0, 4, 8, 7, 3)
SAT_Score <- c(620, 750, 500, 520, 540, 690, 590, 490, 450, 560)
Regression <- lm(Grades ~ Absences + SAT_Score)
summary(Regression)


## PCA

# on the canonical iris flower dataset from the early 20th century

head(iris)
d <- iris[,-5]
head(d)
pc <- princomp(d, cor=TRUE, score=TRUE)
summary(pc)
plot(pc)
plot(pc, type="l")
biplot(pc)
dim(d)
attributes(pc)
pc$loadings
pc$scores
  
