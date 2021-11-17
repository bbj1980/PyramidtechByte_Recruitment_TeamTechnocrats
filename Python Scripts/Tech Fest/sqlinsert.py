import pyodbc 

def InsertResumeSkill(insertResumeSkill,resumeName):
    conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                    'Server=tcp:techfestpyramid.database.windows.net,1433;'
                    'Database=JobByteDB;'
                    'Uid=pyramidadmin;Pwd=Pyramid@5050;'
                    'Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;')
    cursor = conn.cursor()
    SQLCommand = ("INSERT INTO resumeskills(resumename,area,skillset) VALUES (?,?,?)")    
    for key in insertResumeSkill:
        Values = [ resumeName,key, insertResumeSkill[key]]   
        cursor.execute(SQLCommand,Values)
    conn.commit()

    