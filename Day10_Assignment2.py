#Q2. Write a Python program to get the largest and smallest number from a list without built in functions.

# Function to find the largest and smallest number in a list
def find_largest_smallest(numbers):
    # Initializing largest and smallest with the first element of the list
    largest = numbers[0]
    smallest = numbers[0]

    # Loop through the list to compare each number
    for num in numbers:
        if num > largest:  # If the current number is greater than the largest
            largest = num
        if num < smallest:  # If the current number is smaller than the smallest
            smallest = num

    # Return both values
    return largest, smallest

# Example list
numbers_list = [25, 14, 35, 8, 100, 42, 2, 67]

# Calling the function and storing results
largest, smallest = find_largest_smallest(numbers_list)

# Displaying results
print("Largest number:", largest)
print("Smallest number:", smallest)


'''
OUTPUT:
Largest number: 100
Smallest number: 2
'''
