clean_product_names <- function(data, name_column) {
  data[[name_column]] <- gsub("[[:punct:]]", "", data[[name_column]])
  data[[name_column]] <- gsub("[][!#$%()*,.:;<=>@^_`|~.{}]", "", data[[name_column]])
  data[[name_column]] <- gsub("[[:digit:]]+", "", data[[name_column]])
  data[[name_column]] <- toupper(data[[name_column]])
  data[[name_column]] <- trimws(data[[name_column]])
  data[[name_column]] <- gsub(' +', ' ', data[[name_column]])
  return(data)
}
