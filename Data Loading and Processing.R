load_and_process_data <- function(query, connection, date_columns = c(), null_columns = c()) {
  data_query <- dbGetQuery(connection, query)
  
  for (date_col in date_columns) {
    data_query[[date_col]] <- as.Date(data_query[[date_col]])
  }
  
  data_query[null_columns] <- NULL
  return(data_query)
}
