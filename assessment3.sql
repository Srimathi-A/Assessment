1.
db.employee1.insertMany([
{ '_id':101,
	'emp_name':"John Smith",
	'role': "Team member",
	'salary': 40000
},
{ '_id':102,
	'name': "Mark Antony",
	'role': "Team Leader",
	'salary': 50000
},{'_id':103,
        'name':"Jane Bloggs",
        'role':"Project Leader",
        'salary':60000
},{'_id':104,
        'name':"Susan Zin",
        'role':"intern",
        'salary':15000}])


db.emp.updateOne(
{"_id":103},
{$set:{"salary":65000}}}

db.emp.find({"salary":{$gt:40000}})

db.emp.find({"_id":{$in:[103,104]}})
db.emp.find(
{"salary":{$Ite:50000}}).sort({"emp_name":1})

db.emp.find({},{"role":1,"_id":0})

2.

db.Customer.insertMany([
{ 'Customer_id':101,
	'Customer_name':"Praveen",
	'City': "Coimbatore",
	'Adress': "12,jain street",
        'Contact' :9765432190
},
{ 'Customer_id':102,
	'Customer_name':"Rattan",
	'City': "Delhi",
	'Adress': "14, Nehru street",
        'Contact': 9867854321
},
{ 'Customer_id':103,
	'Customer_name':"Charles",
	'City': "Mumbai",
	'Adress': "67,Canal Street",
        'Contact': 8765412345
},
{ 'Customer_id':104,
	'Customer_name':"Tiger",
	'City': "Pune",
	'Adress': "34,Mocha Street",
        'Contact': 7890123456
},
{ 'Customer_id':105,
	'Customer_name':"Kishore",
	'City': "Bangalore",
	'Adress': "9,West Road",
        'Contact': 6789054321
}])

db.Orders.insertMany([
{ 'Order_id':1,
	'Order_No':20123,
	'Order_Date': 8/11/22,
	'Customer_id': 101,
        'Product':"Samsung Mobile",
        'Ship_Date':10/11/22,
        'Quantity':1
},

{ 'Order_id':2,
	'Order_No':20124,
	'Order_Date': 7/11/22,
	'Customer_id': 102,
        'Product':"Oppo Mobile",
        'Ship_Date':11/11/22,
        'Quantity':2
},
{ 'Order_id':3,
	'Order_No':20125,
	'Order_Date': 8/11/22,
	'Customer_id': 101,
        'Product':"VU TV",
        'Ship_Date':11/11/22,
        'Quantity':1
},
{ 'Order_id':4,
	'Order_No':20126,
	'Order_Date': 6/11/22,
	'Customer_id': 103,
        'Product':"iphone 12",
        'Ship_Date':10/11/22,
        'Quantity':2
},
{ 'Order_id':5,
	'Order_No':20127,
	'Order_Date': 10/11/22,
	'Customer_id': 104,
        'Product':"iPad",
        'Ship_Date':12/11/22,
        'Quantity':2
}])

db.Orders.find({ "product": "iPad" })

db.Customer.updateOne(
  { "Customer_Name": "Kishore" },
  { $set: { "Contact": 9876512345 } })

db.Orders.find({ "Order No": 20125, "Quantity": { $gt: 1 } })


db.Customer.find().sort({ "Customer_Name": 1 })


db.Orders.find({}, { "Product": 1, "Quantity": 1, "_id": 0 })


db.Orders.updateOne({ "Order No": 20126, "Product": "iPhone 12" }, { $set: { "Product": "iPhone 14" } })


db.Orders.find({ "Quantity": { $ne: 2 } })


db.Customer.deleteOne({ "City": "Pune" })

