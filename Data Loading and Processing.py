import pandas as pd
from sqlalchemy import create_engine

def load_and_process_data(query, connection_string, date_columns=None, null_columns=None):
    engine = create_engine(connection_string)
    data = pd.read_sql_query(query, engine)

    if date_columns:
        for col in date_columns:
            data[col] = pd.to_datetime(data[col])

    if null_columns:
        data = data.drop(columns=null_columns)

    return data
