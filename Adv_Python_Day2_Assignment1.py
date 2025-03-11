'''
1. You have a list of employee records, and you need to create a new list that contains the names of employees 
who work in the 'Sales' department, all in uppercase. Example Data:
employees = [ {"name": "John Doe", "department": "Sales"},
 {"name": "Jane Smith", "department": "Marketing"},
 {"name": "Emily Johnson", "department": "Sales"}, 
 {"name": "Michael Brown", "department": "HR"} ]
'''
employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

# Get names of employees in 'Sales' and converted to uppercase
sales_employees = [emp["name"].upper() for emp in employees if emp["department"] == "Sales"]
print(sales_employees)


#OUTPUT
"""
['JOHN DOE', 'EMILY JOHNSON']
"""