import pymysql

def insertData(data):
    rowId = 0

    db = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             database='missing_person'
                             )
    cursor = db.cursor()
    print("database connected")

    # query = "INSERT INTO person_data VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');" % \
    #         (data["Name"], data["Father's Name"], data["Mother's Name"], data["Gender"],
    #          data.get('DOB', None), data["Blood Group"], data["Identification Mark"],
    #          data["Nationality"], data["Religion"], data["Crimes Done"])

    # # try:
    # cursor.execute(query)
    if "DOB" in data and data["DOB"] is not None:
        dob = data["DOB"]
    else:
        dob = "20-04-1899"
    query = "INSERT INTO person_data (name, father_name, mother_name, gender, dob, blood_group, identification_mark, nationality, religion, crimes_done) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    values = (data['Name'], data["Father's Name"], data["Mother's Name"], data['Gender'], dob, data['Blood Group'], data['Identification Mark'], data['Nationality'], data['Religion'], data['Crimes Done'])

    cursor.execute(query, values)
    db.commit()
    rowId = cursor.lastrowid
    print("data stored on row %d" % rowId)
    # except:
        # db.rollback()
        # print("Data insertion failed")


    db.close()
    print("connection closed")
    return rowId

def retrieveData(name):
    id = None
    crim_data = None

    db = pymysql.connect("localhost", "root", "", "1234")
    cursor = db.cursor()
    print("database connected")

    query = "SELECT * FROM person_data WHERE name='%s'"%name

    try:
        cursor.execute(query)
        result = cursor.fetchone()

        id=result[0]
        crim_data = {
            "Name" : result[1],
            "Father's Name" : result[2],
            "Mother's Name" : result[3],
            "Gender" : result[4],
            "DOB(yyyy-mm-dd)" : result[5],
            "Blood Group" : result[6],
            "Identification Mark" : result[7],
            "Nationality" : result[8],
            "Religion" : result[9],
            "Crimes Done" : result[10]
        }

        print("data retrieved")
    except:
        print("Error: Unable to fetch data")

    db.close()
    print("connection closed")

    return (id, crim_data)
