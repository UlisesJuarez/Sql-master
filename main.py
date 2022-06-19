import mysql.connector as sql
import pandas as pd

db=sql.connect(host="localhost",user="root",passwd="",database="people")

# executor=db.cursor()

# executor.execute("select*from citizen")

# for i in executor:
#     print(i)

query="Select*from citizen"
data=pd.read_sql(query,db)

print(data)
print(data.head())