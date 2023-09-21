#' @author NMCG
#' @description Intro to basic R commands


# code to generate median from...

#data()

#x <- 20
#x
chickwts

# names(chickwts)
# 
# str(chickwts)
# 
# head(chickwts, n = -4)
# 
# tail(chickwts, n = 10)
# 
# summary(chickwts)

stripchart(chickwts$weight, main="Some title", pch = 21)

hist(chickwts$weight, main="Frequency of weights",
     xlab = "weight",
     ylab = "frequency",
     col = "orange")

boxplot(chickwts$weight~chickwts$feed,
        main = "something",
        col = rgb(0.6, 0.5, 0))





