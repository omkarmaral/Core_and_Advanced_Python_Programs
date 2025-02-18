#Q1.  Write a Python program to sum all the items in a list.

# Function to calculate the sum of all items in a list
def sum_of_list(numbers):
    # Using the built-in sum() function to calculate the sum
    return sum(numbers)

# Example list
numbers_list = [10, 20, 30, 40, 50]

# Calling the function and storing the result
total_sum = sum_of_list(numbers_list)

# Displaying the result
print("Sum of all items in the list:", total_sum)


'''
OUTPUT:
Sum of all items in the list: 150
'''
