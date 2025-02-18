def div(num1, num2):
    # Perform division and return the result
    if num2 != 0:
        return num1 / num2
    else:
        return "Error! Division by zero."

# Call the div() function
number1 = float(input("Enter the first number: "))
number2 = float(input("Enter the second number: "))
result = div(number1, number2)

print(f"The result of dividing {number1} by {number2} is: {result}")


output:-
Enter the first number: 8
Enter the second number: 2
The result of dividing 8.0 by 2.0 is: 4.0