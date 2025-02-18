# Program to check whether a number is palindrome

num = int(input("Enter a number: "))  # Input the number
original_num = num  # Save the original number
reversed_num = 0

# Reverse the number
while num > 0:
    remainder = num % 10
    reversed_num = (reversed_num * 10) + remainder
    num = num // 10

# Check if the number is a palindrome
if original_num == reversed_num:
    print(f"{original_num} is a palindrome.")
else:
    print(f"{original_num} is not a palindrome.")


'''
Output :-
Enter a number: 123
123 is not a palindrome.

'''
