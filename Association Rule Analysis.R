run_association_rules <- function(data, item_column, min_support = 0.001, min_confidence = 0.05, target = "rules") {
  txn <- as(split(data[[item_column]], data$PASSENGER_ID), "transactions")
  rules <- apriori(txn, parameter = list(supp = min_support, conf = min_confidence, target = target))
  return(as(rules, "data.frame"))
}
