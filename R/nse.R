groupAndSummarize <- function(data, groups, sums, nms) {
  result <- data %>%
    group_by_(.dots = groups) %>%
    summarise_(.dots = setNames(sums, nms)) %>%
    ungroup()
}

CastData <- function(data, factors) {
  
  lazy <- function(f) lazyeval::interp(~ as.factor(tolower(n)), n = as.name(f))
  
  m.calls <- sapply(factors, lazy)
  
  data <- data %>% mutate_(.dots = setNames(m.calls, factors))
}