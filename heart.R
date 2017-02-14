### 2017年 02月 14日 星期二 12:07:30 CST #################

uheart <- function(x) {sqrt(1 - x^2) + (x^2)^(1/3)}
dheart <- function(x) {-sqrt(1 - x^2) + (x^2)^(1/3)}

x <- seq(from = -1, to = 1, by = 0.001)

uheart.data <- data.frame(x = x, y = uheart(x))
dheart.data <- data.frame(x = x, y = dheart(x))

library(ggplot2)

ggplot() + geom_line(data = uheart.data, color = "red", aes(x = x, y = y)) +
	geom_line(data = dheart.data, color = "red", aes(x = x, y = y))
