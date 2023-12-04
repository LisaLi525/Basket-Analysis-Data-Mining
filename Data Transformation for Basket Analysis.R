transform_for_basket_analysis <- function(data, id_column, date_column, item_column, separator = ",") {
  data$ASR_PRODUCT_BOOKING_DTM <- as.Date(data[[date_column]])
  basket_data <- ddply(data, c(id_column, date_column), function(df) paste(df[[item_column]], collapse = separator))
  return(basket_data)
}
