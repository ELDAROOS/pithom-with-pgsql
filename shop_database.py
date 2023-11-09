import psycopg2
connect = psycopg2.connect(host = 'localhost',
                        database = 'medic',
                        user = 'postgres',
                        password = '12345678',
                        port = '5432'
                        )
    
cursor = connect.cursor()
    
cursor.execute("SELECT doctor_id FROM doctors")
usernames = [r[0] for r in cursor.fetchall()]
Found = False
while not Found:
    username = input('введите ваш логин:')
    if username in usernames:
        print('вы есть в списке')
        Found=True
else:
        print('мы не смогли вас найти')
      
connect.commit()
cursor.close()
connect.close()