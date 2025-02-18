# Program to reverse a number using a while loop

num = int(input("Enter a number: "))  # Input the number
reversed_num = 0

while num > 0:
    remainder = num % 10  # Get the last digit
    reversed_num = (reversed_num * 10) + remainder  # Shift digits and add the last digit
    num = num // 10  # Remove the last digit

print("Reversed Number:", reversed_num)

'''
Output:-
Enter a number: 12345
Reversed Number: 54321

'''
