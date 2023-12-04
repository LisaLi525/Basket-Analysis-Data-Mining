def clean_product_names(data, name_column):
    data[name_column] = data[name_column].str.replace(r'[^\w\s]', '', regex=True)
    data[name_column] = data[name_column].str.upper()
    data[name_column] = data[name_column].str.strip()
    return data
