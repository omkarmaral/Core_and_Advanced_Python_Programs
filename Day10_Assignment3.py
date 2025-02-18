#Q3.  Write a Python program to find duplicate values from a list and display those.

# Function to find duplicate values in a list
def find_duplicates(numbers):
    duplicates = []  # List to store duplicate values
    seen = set()  # Set to track unique values

    # Loop through each number in the list
    for num in numbers:
        if num in seen and num not in duplicates:
            duplicates.append(num)  # Add to duplicates if it's already seen
        else:
            seen.add(num)  # Add to seen set if it's a new number

    return duplicates  # Return the list of duplicates

# Example list
numbers_list = [10, 20, 30, 20, 40, 50, 10, 60, 30, 70, 80, 90, 10]

# Calling the function
duplicates = find_duplicates(numbers_list)

# Displaying the result
print("Duplicate values in the list:", duplicates)


'''
OUTPUT:
Duplicate values in the list: [20, 10, 30]
'''
