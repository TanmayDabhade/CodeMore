//
//  PythonView.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 4/12/24.
//


import SwiftUI

struct PythonView: View {
    @State private var isShowingQuizView = false
    
    let basicSyntaxCodingSnippet = """
    # This is a simple Python script
    print("Hello, World!")
    """
    
    let variableTypesCodingSnippet = """
    # Integers
    a = 5
    b = -10
    c = 0

    # Floats
    pi = 3.14
    gravity = 9.8
    temperature = -15.7

    # Strings - enclosed in 3 single or double quotation marks on each side.
    name = "Alice"
    greeting = 'Hello, World!'
    multiline = '''This is a
    multi-line string.'''
    
    # Booleans
    is_student = True
    is_teacher = False

    # Lists
    numbers = [1, 2, 3, 4, 5]
    fruits = ["apple", "banana", "cherry"]
    mixed = [1, "apple", 3.14, True]

    # Tuples
    coordinates = (10.0, 20.0)
    person = ("Alice", 25, "Engineer")

    # Dictionaries
    student = {
        "name": "Alice",
        "age": 25,
        "is_student": True
    }

    # Sets
    unique_numbers = {1, 2, 3, 4, 5}
    fruits_set = {"apple", "banana", "cherry"}
    """
    
    let arithmeticCalculationsSnippet = """
    # Arithmetic operations
    sum = 5 + 3
    difference = 10 - 4
    product = 7 * 2
    quotient = 15 / 3

    # String concatenation
    full_name = "John" + " " + "Doe"

    # Type conversion
    age = int("20")
    height = float("5.9")
    """
    
    let ifElseSnippet = """
    age = 18
    if age >= 18:
        print("You are an adult.")
    else:
        print("You are a minor.")
    """
    
    let forLoopsSnippet = """
    for i in range(5):
        print(i)
    """
    
    let whileLoopsSnippet = """
    count = 0
    while count < 5:
        print(count)
        count += 1
    """
    let dataTypeDictionary = [
        ("Integers", "Integers are whole numbers, positive or negative, without a fractional part."),
        ("Floats", "Floats are numbers that have a decimal point. They can represent fractional numbers."),
        ("Strings", "Strings are sequences of characters enclosed in single, double, or triple quotes."),
        ("Booleans", "Booleans represent one of two values: True or False."),
        ("Lists", "Lists are ordered collections of items that can be of different types. Lists are mutable, meaning their content can be changed."),
        ("Tuples", "Tuples are similar to lists, but they are immutable, meaning their content cannot be changed after creation."),
        ("Dictionaries", "Dictionaries are collections of key-value pairs. Keys must be unique and immutable (usually strings or numbers), while values can be of any type."),
        ("Sets", "Sets are unordered collections of unique items.")
    ]
    
    
    
    let functionDecCallSnippet = """
    def greet(name):
        return "Hello, " + name

    print(greet("Alice"))
    """
    
    let multipleParamFuncSnippet = """
    def add(a, b):
        return a + b

    print(add(5, 3))
    """
    
    let creatingModules = """
    #my_module.py
    
    def say_hello():
        return "Hello from my_module!"
    """
    
    let usingModules = """
    #main.py
    
    import my_module

    print(my_module.say_hello())
    """
    
    let readFileSnippet = """
    with open('example.txt', 'r') as file:
        content = file.read()
        print(content)
    """
    
    let writefileSnippet = """
    with open('example.txt', 'w') as file:
        file.write("Hello, World!")
    """
    
    let tryExceptSnippet = """
    try:
        result = 10 / 0
    except ZeroDivisionError:
        print("Error: Division by zero is not allowed.")
    """
    
    let oopSnippet = """
    class Dog:
        def __init__(self, name, age):
            self.name = name
            self.age = age

        def bark(self):
            return "Woof!"

    dog1 = Dog("Buddy", 3)
    print(dog1.bark())
    """
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {

                SectionView(title: "What is Python?", description: "Python is a high-level, interpreted programming language known for its simplicity and readability. It's widely used in web development, data analysis, artificial intelligence, scientific computing, and more.")
                
                SectionView(title: "Basic Syntax", description: "")
                
                CodeSnippetView(title: "", snippet: basicSyntaxCodingSnippet)
                
                SectionView(title: "Data Types", description: "")
                CodeSnippetView(title: "", snippet: variableTypesCodingSnippet)
                
                TextDescriptionsView(descriptions: dataTypeDictionary)
                
                
                SectionView(title: "Arithmetic Operations", description: "")
                CodeSnippetView(title: "", snippet: arithmeticCalculationsSnippet)
                
                
                
                SectionView(title: "Control Structures", description: "Control Structures allow us to select what behaviour and what code is being run.")
                CodeSnippetView(title: "If-Else Statements", snippet: ifElseSnippet)
                CodeSnippetView(title: "For Loops", snippet: forLoopsSnippet)
                CodeSnippetView(title: "While Loops", snippet: whileLoopsSnippet)
                
                SectionView(title: "Control Structures", description:"")
                CodeSnippetView(title: "Declaring and Calling Functions", snippet: ifElseSnippet)
                CodeSnippetView(title: "Functions with Multiple Parameters", snippet: forLoopsSnippet)
                
                
                SectionView(title: "Modules", description: "")
                CodeSnippetView(title: "Importing Modules", snippet: creatingModules)
                CodeSnippetView(title: "Creating and Using Modules", snippet: usingModules)
                
                
                SectionView(title: "File Handeling", description: "")
                CodeSnippetView(title: "Reading from a file", snippet: readFileSnippet)
                CodeSnippetView(title: "Writing to a File", snippet: writefileSnippet)

                
                SectionView(title: "Error Handeling", description: "")
                CodeSnippetView(title: "Try Except Blocks", snippet: tryExceptSnippet)
                
                SectionView(title: "Object-Oriented Programming (OOP)", description: "")
                CodeSnippetView(title: "Classes and Objects", snippet: oopSnippet)
                // Add more sections as needed...
                
            
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
            Button(action: {
                isShowingQuizView = true
            }) {
                Text("Take the Quiz")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green.opacity(0.8))
                    .cornerRadius(10)
            }
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .center)
            
            NavigationLink(destination: PyQuizView(), isActive: $isShowingQuizView) {
                EmptyView()
            }
            .cornerRadius(10)
            
            
        }
    }
}

#Preview {
    PythonView()
}




