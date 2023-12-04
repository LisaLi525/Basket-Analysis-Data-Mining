# Database Connection
# Assuming `con.oracle` is your database connection object

# Load and Process Data for Web Channel
query_web <- "SELECT * FROM your_table WHERE conditions_for_web"
data_web <- load_and_process_data(query_web, con.oracle, date_columns = c("SAIL_DATE"), null_columns = c("THE_KEY_T", "SHIP_CODE"))

# Run Association Rules
item_data_web <- transform_for_basket_analysis(data_web, "PASSENGER_ID", "ASR_PRODUCT_BOOKING_DTM", "PRODUCT_ID")
rules_web <- run_association_rules(item_data_web, "itemList")

# Similarly, you can process and analyze data for Call Center and Onboard Channels
