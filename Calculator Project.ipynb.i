# Define a function to add two numbers
def add(x, y):
    return x + y  # Return the sum of x and y

# Define a function to subtract one number from another
def subtract(x, y):
    return x - y  # Return the difference between x and y

# Define a function to multiply two numbers
def multiply(x, y):
    return x * y  # Return the product of x and y

# Define a function to divide one number by another
def divide(x, y):
    return x / y  # Return the quotient of x divided by y

# Print instructions for user input
print("Enter A for Addition.")
print("Enter S for Subtraction.")
print("Enter M for Multiplication.")
print("Enter D for Division.")

# Start an infinite loop for continuous calculations
while True:
    # Get the user's choice of operation
    choice = input("Enter Choice (A,S,M,D): ")
    
    # Check if the user's choice is valid
    if choice.upper() in ('A', 'ADD', 'ADDITION', 'S', 'SUBTRACT', 'SUBTRACTION', 
                          'M', 'Multiply', 'Multiplication', 'DIVITION', 'D', 'DIVIDE'):
        # Prompt the user for two numbers
        num1 = float(input("Enter first number: "))  # Convert input to float
        num2 = float(input("Enter second number: "))  # Convert input to float
    
        # Perform addition if the user chose Addition
        if choice.upper() in ('A', 'ADD', 'ADDITION'):
            print("Result: ", num1, " + ", num2, " = ", add(num1, num2))
        # Perform subtraction if the user chose Subtraction
        elif choice.upper() in ('S', 'SUBTRACT', 'SUBTRACTION'):
            print("Result: ", num1, " - ", num2, " = ", subtract(num1, num2))
        # Perform multiplication if the user chose Multiplication
        elif choice.upper() in ('M', 'Multiply', 'Multiplication'):
            print("Result: ", num1, " * ", num2, " = ", multiply(num1, num2))
        # Perform division if the user chose Division
        elif choice.upper() in ('D', 'DIVITION', 'DIVIDE'):
            print("Result: ", num1, " / ", num2, " = ", divide(num1, num2))
        else:
            # Handle invalid choices (should not be reached)
            print("Please Enter A, S, M, D: ")
    else:
        # Handle invalid user input for operation choice
        print("Please Enter A, S, M, D: ")

    # Ask the user if they want to perform another calculation
    next_calculation = input("Want to do another calculation? (yes/no): ")
    # Exit the loop if the user enters 'no', 'n', or 'nope'
    if next_calculation.lower() in ("no", "n", "nope"):
        break  # End the loop
