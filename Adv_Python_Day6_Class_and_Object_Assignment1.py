'''Q1. Lab1:  Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 
1. Class Attributes: ○ total_books: A class attribute representing the total number of books available in the library. ○ all_books: A class attribute that stores a list of all books available. 
2. Instance Attributes: ○ name:Nameof the library member. ○ borrowed_books: A list to keep track of books borrowed by the member. 
3. Methods: ○ borrow_book(self, book): A method to borrow a book from the library. The method should: ■ Checkif the book is available
■ Addthebook to the member's borrowed list. 
■ Removethe book from the library's all_books list. 
■ Decrease total_books by 1
■ If the book is not available, return a message saying "Book not available." ○ return_book(self, book): A method to return a book. The method should: 
■ Addthebook back to the library's all_books list.
■ Removethe book from the member's borrowed_books list. 
■ Increase total_books by 1. 
4. Class Method: ○ view_library_books(cls): A class method that prints the total number of books and lists all available books.'''

class Library:
    # Class Attributes
    total_books = 0  # Total number of books in the library
    all_books = []  # List to store all books available in the library

    def __init__(self, name):
        # Instance Attributes
        self.name = name  # Name of the library member
        self.borrowed_books = []  # List to track borrowed books by the member

    def borrow_book(self, book):
        """
        Method to borrow a book from the library.
        It checks if the book is available, adds it to the member's borrowed list,
        removes it from the library's list, and decreases total_books by 1.
        """
        # Check if the book is available in the library
        if book in Library.all_books:
            # Add the book to the member's borrowed list
            self.borrowed_books.append(book)
            # Remove the book from the library's all_books list
            Library.all_books.remove(book)
            # Decrease total_books by 1
            Library.total_books -= 1
            print(f"{self.name} has borrowed '{book}'.")
        else:
            print("Book not available.")

    def return_book(self, book):
        """
        Method to return a borrowed book to the library.
        It adds the book back to the library's list, removes it from the member's list,
        and increases total_books by 1.
        """
        # Check if the book was borrowed by the member
        if book in self.borrowed_books:
            # Remove the book from the borrowed list
            self.borrowed_books.remove(book)
            # Add the book back to the library's all_books list
            Library.all_books.append(book)
            # Increase total_books by 1
            Library.total_books += 1
            print(f"{self.name} has returned '{book}'.")
        else:
            print(f"{self.name} did not borrow '{book}'.")

    @classmethod
    def view_library_books(cls):
        """
        Class method to view the total number of books and list all available books.
        """
        print(f"Total books in the library: {cls.total_books}")
        print("Books currently available in the library:")
        for book in cls.all_books:
            print(f"- {book}")

# Example usage:

# Add books to the library
Library.all_books = ['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Moby Dick']
Library.total_books = len(Library.all_books)

# Create library members
member1 = Library("Alice")
member2 = Library("Bob")

# Member1 borrows a book
member1.borrow_book('1984')

# Member2 tries to borrow a book that is not available
member2.borrow_book('1984')

# Member1 returns the book
member1.return_book('1984')

# View the available books in the library
Library.view_library_books()

'''
OUTPUT:
Alice has borrowed '1984'.
Book not available.
Alice has returned '1984'.
Total books in the library: 4
Books currently available in the library:
- The Great Gatsby
- To Kill a Mockingbird
- Moby Dick
- 1984
'''
