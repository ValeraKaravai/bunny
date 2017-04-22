negativeDownSample <- function(data, r = 0.1) {
  dice <- function(n, r) {
    if (n <= 0) return(0)
    
    tt <- runif(n)
    
    length(tt[tt < r])
  }
  
  vDice <- Vectorize(dice, c("n"))
  
  data %>% mutate(non_conversions = vDice(non_conversions, r))
}

negativeDownSample2 <- function(data, r = 0.1) {
  dice <- function(n, r) {
    if (n <= 0) return(0)
    
    rbinom(1, n, r)
  }
  
  vectorizedDice <- Vectorize(dice, c("n"))
  
  data %>% mutate(
    non_conversions = vectorizedDice(non_conversions, r),
    impressions = non_conversions + conversions
  )
}

sparseModelMatrix <- function(formula, data, limit = 0, reference = data) {
  
  m <- sparse.model.matrix(formula, data)
  
  mr <- sparse.model.matrix(formula, reference)
  
  m <- m[, colnames(mr)]
  
  if (limit > 0) {
    mi <- reference$impressions*mr
    
    cs <- colSums(mi)
    
    lcs <- cs[cs > limit]
    
    mt <- m[,names(lcs)]
    
    return(mt)
  } else {
    return(m)
  }
}