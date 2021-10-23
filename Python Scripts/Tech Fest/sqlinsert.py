import pyodbc 
conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                    'Server=tcp:techfestpyramid.database.windows.net,1433;'
                    'Database=techfestdbserver;'
                    'Uid=pyramidadmin;Pwd=Pyramid@5050;'
                    'Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;')
def insertResumeSkill(insertResumeSkill):
    cursor = conn.cursor()
    mySql_insert_query = """INSERT INTO resumeskills (resumename,area,skillset) 
                           VALUES (%s, %s, %s) """
      
    for key in insertResumeSkill:
             sqlString = """INSERT INTO resumeskills
                             (resumename,area,skillset) 
                             VALUES (""" + "abc.txt"  + key + ',' + insertResumeSkill[key].removesuffix(',') + ") """
             print(sqlString)
             cursor.execute(sqlString)
    conn.commit()

    