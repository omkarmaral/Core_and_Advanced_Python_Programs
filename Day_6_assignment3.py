def factorial(n):
    result = 1
    while n > 0:
        result *= n
        n -= 1
    return result

# Input number from the user
number = int(input("Enter a number: "))
print(f"The factorial of {number} is {factorial(number)}")