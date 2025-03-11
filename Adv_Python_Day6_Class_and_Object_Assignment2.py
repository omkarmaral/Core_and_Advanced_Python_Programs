'''Q2. Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 
1. Class Attribute: ○ available_movies: A list of all movies available in the library.
2. Instance Attributes: ○ member_name: The name of the library member. ○ borrowed_movies: A list of movies borrowed by the member. 
3. Methods: ○ borrow_movie(self, movie): Borrows a movie from the library if available. 
○ return_movie(self, movie): Returns a movie to the library.
○ view_borrowed_movies(self): Prints a list of movies borrowed by the member. '''

class MovieLibrary:
    # Class Attribute
    available_movies = []  # List to store all movies available in the library

    def __init__(self, member_name):
        # Instance Attributes
        self.member_name = member_name  # Name of the library member
        self.borrowed_movies = []  # List to track borrowed movies by the member

    def borrow_movie(self, movie):
        """
        Borrows a movie from the library if it's available.
        Adds it to the member's borrowed list and removes it from the library's available list.
        """
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)  # Add the movie to the borrowed list
            MovieLibrary.available_movies.remove(movie)  # Remove the movie from available list
            print(f"{self.member_name} has borrowed '{movie}'.")
        else:
            print(f"'{movie}' is not available in the library.")

    def return_movie(self, movie):
        """
        Returns a movie to the library.
        Removes it from the member's borrowed list and adds it back to the library's available list.
        """
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)  # Remove the movie from borrowed list
            MovieLibrary.available_movies.append(movie)  # Add the movie back to the library
            print(f"{self.member_name} has returned '{movie}'.")
        else:
            print(f"{self.member_name} did not borrow '{movie}'.")

    def view_borrowed_movies(self):
        """
        Prints the list of movies borrowed by the member.
        """
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed the following movies:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")

# Example usage:

# Add movies to the library
MovieLibrary.available_movies = ['Inception', 'The Matrix', 'Titanic', 'Avatar', 'Interstellar']

# Create library members
member1 = MovieLibrary("Alice")
member2 = MovieLibrary("Bob")

# Member1 borrows a movie
member1.borrow_movie('Inception')

# Member2 tries to borrow a movie that is not available
member2.borrow_movie('Inception')

# Member1 returns the movie
member1.return_movie('Inception')

# View the borrowed movies for member1 and member2
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# View available movies in the library
print("\nAvailable movies in the library:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")


'''
OUTPUT:
Alice has borrowed 'Inception'.
'Inception' is not available in the library.
Alice has returned 'Inception'.
Alice has not borrowed any movies.
Bob has not borrowed any movies.

Available movies in the library:
- The Matrix
- Titanic
- Avatar
- Interstellar
- Inception
'''
