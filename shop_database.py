#1 запрос по ценам
import psycopg2
connect = psycopg2.connect(host = 'localhost',
                        database = 'PostgreSQL',
                        user = 'postgres',
                        password = '12345678',
                        port = '5432'
                        )
    
cursor = connect.cursor()
    
cursor.execute("SELECT SUM(price), AVG(price) FROM Products")
result = cursor.fetchall()

print("Сумма стоимости продуктов:", result)
print("Среднее значение стоимости продуктов:", result)

#2 запрос на сортировку по ценам
import psycopg2
connect = psycopg2.connect(host = 'localhost',
                        database = 'PostgreSQL',
                        user = 'postgres',
                        password = '12345678',
                        port = '5432'
                        )
    
cursor = connect.cursor()

cursor.execute("SELECT * FROM Products ORDER BY price")
result = cursor.fetchall()

for row in result:
    print(row)

print("Сортировка по ценам:", result)

#3 
import psycopg2
connect = psycopg2.connect(host = 'localhost',
                        database = 'PostgreSQL',
                        user = 'postgres',
                        password = '12345678',
                        port = '5432'
                        )
    
cursor = connect.cursor()

cursor.execute("SELECT customerid, SUM(totalamount) FROM Orders GROUP BY customerid")

result = cursor.fetchall()

for row in result:
    customerid, total_order_amount = row
    print(f"Клиент {customerid}: Общая сумма заказов = {total_order_amount}")

#4 джоины
import psycopg2
connect = psycopg2.connect(host = 'localhost',
                        database = 'PostgreSQL',
                        user = 'postgres',
                        password = '12345678',
                        port = '5432'
                        )
    
cursor = connect.cursor()

#тут я взял инфу с инета так как запрос с ("text") не работал, но работает с ("""text""")
cursor.execute("""
SELECT Products.productname, Orders.orderdate, Customers.firstname, Customers.lastname
FROM Orders
INNER JOIN Products ON productid = Products.productid
INNER JOIN Customers ON Orders.customerid = Customers.customerid;
""")

result = cursor.fetchall()

for row in result:
    productname, orderdate, customername = row
    print(f"Продукт: {productname}, Дата заказа: {orderdate}, Клиент: {customername}")
