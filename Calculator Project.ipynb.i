def add(x,y):
    return x + y

def subtract(x,y):
    return x - y

def multiply(x,y):
    return x * y

def divide(x,y):
    return x / y

print("Enter A for Addition. ")
print("Enter S for Subtraction. ")
print("Enter M for Multiplication. ")
print("Enter D for Division. ")



while True:
    choice = input("Enter Choice (A,S,M,D): ")
    
    if choice.upper() in ('A', 'ADD', 'ADDITION', 'S','SUBTRACT', 'SUBTRACTION', 'M', 'Multiply', 'Multiplication', 'DIVITION', 'D', 'DIVIDE'):
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))
    
        if choice.upper() in ('A', 'ADD', 'ADDITION'):
            print("Result: ",num1, " + ", num2, " = ",add(num1, num2))
        elif choice.upper() in ('S','SUBTRACT', 'SUBTRACTION'):
            print("Result: ",num1, " - ", num2, " = ", subtract(num1, num2))
        elif choice.upper() in ('M', 'Multiply', 'Multiplication'):
            print("Result: ",num1, " * ", num2, " = ", multiply(num1, num2))
        elif choice.upper() in ('D', 'DIVITION', 'DIVIDE'):
            print("Result: ",num1, " / ", num2, " = ", divide(num1, num2))
        else: 
            print("Please Enter A, S, M, D: ")
    else:
        print("Please Enter A, S, M, D: ") 

    next_calculation = input("Want to do another calculation? (yes/no): ")
    if next_calculation.lower() in ("no", "n", "nope"):
        break