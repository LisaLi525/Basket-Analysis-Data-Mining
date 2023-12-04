def transform_for_basket_analysis(data, id_column, item_column):
    basket = data.groupby(id_column)[item_column].apply(lambda items: ','.join(items)).reset_index()
    basket = basket[item_column].str.get_dummies(',')
    return basket
