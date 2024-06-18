//
//  Swift.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 6/11/24.
//

import SwiftUI

struct SwiftView: View {
    @State private var isShowingQuizView = false
    
    let basicSyntaxCodingSnippet = """
    // This is a simple Swift script
    print("Hello, World!")
    """
    
    let variableTypesCodingSnippet = """
    // Integers
    var a = 5
    var b = -10
    var c = 0

    // Floats
    var pi: Float = 3.14
    var gravity: Double = 9.8
    var temperature = -15.7

    // Strings
    var name = "Alice"
    var greeting = "Hello, World!"
    var multiline = \"""
    This is a
    multi-line string.
    \"""
    
    // Booleans
    var isStudent = true
    var isTeacher = false

    // Arrays
    var numbers = [1, 2, 3, 4, 5]
    var fruits = ["apple", "banana", "cherry"]
    var mixed: [Any] = [1, "apple", 3.14, true]

    // Tuples
    var coordinates = (10.0, 20.0)
    var person = ("Alice", 25, "Engineer")

    // Dictionaries
    var student = [
        "name": "Alice",
        "age": 25,
        "isStudent": true
    ] as [String : Any]

    // Sets
    var uniqueNumbers: Set = [1, 2, 3, 4, 5]
    var fruitsSet: Set = ["apple", "banana", "cherry"]
    """
    
    let arithmeticCalculationsSnippet = """
    // Arithmetic operations
    let sum = 5 + 3
    let difference = 10 - 4
    let product = 7 * 2
    let quotient = 15 / 3

    // String concatenation
    let fullName = "John" + " " + "Doe"

    // Type conversion
    let age = Int("20")
    let height = Double("5.9")
    """
    
    let ifElseSnippet = """
    let age = 18
    if age >= 18 {
        print("You are an adult.")
    } else {
        print("You are a minor.")
    }
    """
    
    let forLoopsSnippet = """
    for i in 0..<5 {
        print(i)
    }
    """
    
    let whileLoopsSnippet = """
    var count = 0
    while count < 5 {
        print(count)
        count += 1
    }
    """
    
    let dataTypeDictionary = [
        ("Integers", "Integers are whole numbers, positive or negative, without a fractional part."),
        ("Floats", "Floats are numbers that have a decimal point. They can represent fractional numbers."),
        ("Strings", "Strings are sequences of characters enclosed in double or triple quotes."),
        ("Booleans", "Booleans represent one of two values: true or false."),
        ("Arrays", "Arrays are ordered collections of items that can be of different types. Arrays are mutable, meaning their content can be changed."),
        ("Tuples", "Tuples are similar to arrays but are of fixed size and can hold multiple types."),
        ("Dictionaries", "Dictionaries are collections of key-value pairs. Keys must be unique and are usually strings or numbers."),
        ("Sets", "Sets are unordered collections of unique items.")
    ]
    
    let functionDecCallSnippet = """
    func greet(name: String) -> String {
        return "Hello, " + name
    }

    print(greet(name: "Alice"))
    """
    
    let multipleParamFuncSnippet = """
    func add(a: Int, b: Int) -> Int {
        return a + b
    }

    print(add(a: 5, b: 3))
    """
    
    let creatingModules = """
    // In Swift, you can use frameworks or modules by importing them
    import Foundation

    // Example function in a custom module
    func sayHello() -> String {
        return "Hello from myModule!"
    }
    """
    
    let usingModules = """
    // Using the function from the custom module
    print(sayHello())
    """
    
    let readFileSnippet = """
    import Foundation

    if let filepath = Bundle.main.path(forResource: "example", ofType: "txt") {
        do {
            let contents = try String(contentsOfFile: filepath)
            print(contents)
        } catch {
            print("File read error: Error Description")
        }
    }
    """
    
    let writeFileSnippet = """
    import Foundation

    let text = "Hello, World!"
    let filename = "example.txt"

    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let fileURL = dir.appendingPathComponent(filename)
        
        do {
            try text.write(to: fileURL, atomically: false, encoding: .utf8)
        } catch {
            print("File write error: Error Description")
        }
    }
    """
    
    let tryCatchSnippet = """
    do {
        let result = try someFunctionThatThrows()
    } catch {
        print("Error: \\(error)")
    }
    """
    
    let oopSnippet = """
    class Dog {
        var name: String
        var age: Int

        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }

        func bark() -> String {
            return "Woof!"
        }
    }

    let dog1 = Dog(name: "Buddy", age: 3)
    print(dog1.bark())
    """
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                SectionView(title: "What is Swift?", description: "Swift is a powerful and intuitive programming language for iOS, macOS, watchOS, and tvOS app development. It’s designed to give developers more freedom than ever. Swift is easy to use and open source, so anyone with an idea can create something incredible.")
                
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
                
                SectionView(title: "Functions", description: "")
                CodeSnippetView(title: "Declaring and Calling Functions", snippet: functionDecCallSnippet)
                CodeSnippetView(title: "Functions with Multiple Parameters", snippet: multipleParamFuncSnippet)
                
                SectionView(title: "Modules", description: "")
                CodeSnippetView(title: "Creating Modules", snippet: creatingModules)
                CodeSnippetView(title: "Using Modules", snippet: usingModules)
                
                SectionView(title: "File Handling", description: "")
                CodeSnippetView(title: "Reading from a File", snippet: readFileSnippet)
                CodeSnippetView(title: "Writing to a File", snippet: writeFileSnippet)
                
                SectionView(title: "Error Handling", description: "")
                CodeSnippetView(title: "Try-Catch Blocks", snippet: tryCatchSnippet)
                
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
            
            NavigationLink(destination: SwiftQuizView(), isActive: $isShowingQuizView) {
                EmptyView()
            }
            .cornerRadius(10)
        }
    }
}

#Preview {
    SwiftView()
}

