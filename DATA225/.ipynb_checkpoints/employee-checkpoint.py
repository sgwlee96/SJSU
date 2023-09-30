from DATA225utils import make_connection, dataframe_query

def reset_employee(conn):
    cursor = conn.cursor()
    
    cursor.execute('DROP TABLE IF EXISTS employee')
    
    sql = ( """
        CREATE TABLE employee
        (
            id     int,
            last   varchar(32),
            first  varchar(32),
            salary double,
            PRIMARY KEY(id)
        )
        """
      )

    cursor.execute(sql)
    
def print_employee(conn):
    count, df = dataframe_query(conn, 'SELECT * FROM employee')
    
    print(f'{count} rows:')
    print()
    display(df)
    