library('tidyverse')
library('ggplot2')
#install.packages('gridExtra')
#conjecture de Goldbach
j <- 100

nombre <- seq(1:j)
nombre

nombre_pair <- nombre[nombre%%2==0]  
nombre_pair


prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
nombre_premier <- prime_numbers(j)
nombre_premier
length(nombre_premier)

l <- expand.grid(nombre_premier, nombre_premier)

ll <- l[1]+l[2]
ll

somme_premier <- unique(ll)

somme_premier_pair <- somme_premier[somme_premier%%2==0]
somme_premier_pair
#arrange(somme_premier_pair, Var1)


test <- nombre_pair %in% somme_premier_pair
test
length(nombre_pair)
length(test)
masque <- !test
masque

nombre_pair[masque]
