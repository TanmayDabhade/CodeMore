//
//  Javascript.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 6/11/24.
//

import SwiftUI

struct JavaScriptView: View {
    @State private var isShowingQuizView = false
    
    let basicSyntaxCodingSnippet = """
    // This is a simple JavaScript script
    console.log("Hello, World!");
    """
    
    let variableTypesCodingSnippet = """
    // Integers
    let a = 5;
    let b = -10;
    let c = 0;

    // Floats
    let pi = 3.14;
    let gravity = 9.8;
    let temperature = -15.7;

    // Strings
    let name = "Alice";
    let greeting = 'Hello, World!';
    let multiline = This is a
    multi-line string.;
    
    // Booleans
    let isStudent = true;
    let isTeacher = false;

    // Arrays
    let numbers = [1, 2, 3, 4, 5];
    let fruits = ["apple", "banana", "cherry"];
    let mixed = [1, "apple", 3.14, true];

    // Objects
    let student = {
        name: "Alice",
        age: 25,
        isStudent: true
    };

    // Sets (using Set object)
    let uniqueNumbers = new Set([1, 2, 3, 4, 5]);
    let fruitsSet = new Set(["apple", "banana", "cherry"]);
    """
    
    let arithmeticCalculationsSnippet = """
    // Arithmetic operations
    let sum = 5 + 3;
    let difference = 10 - 4;
    let product = 7 * 2;
    let quotient = 15 / 3;

    // String concatenation
    let fullName = "John" + " " + "Doe";

    // Type conversion
    let age = parseInt("20");
    let height = parseFloat("5.9");
    """
    
    let ifElseSnippet = """
    let age = 18;
    if (age >= 18) {
        console.log("You are an adult.");
    } else {
        console.log("You are a minor.");
    }
    """
    
    let forLoopsSnippet = """
    for (let i = 0; i < 5; i++) {
        console.log(i);
    }
    """
    
    let whileLoopsSnippet = """
    let count = 0;
    while (count < 5) {
        console.log(count);
        count++;
    }
    """
    
    let dataTypeDictionary = [
        ("Integers", "Integers are whole numbers, positive or negative, without a fractional part."),
        ("Floats", "Floats are numbers that have a decimal point. They can represent fractional numbers."),
        ("Strings", "Strings are sequences of characters enclosed in single, double, or backticks."),
        ("Booleans", "Booleans represent one of two values: true or false."),
        ("Arrays", "Arrays are ordered collections of items that can be of different types. Arrays are mutable, meaning their content can be changed."),
        ("Objects", "Objects are collections of key-value pairs. Keys must be unique, while values can be of any type."),
        ("Sets", "Sets are unordered collections of unique items.")
    ]
    
    let functionDecCallSnippet = """
    function greet(name) {
        return "Hello, " + name;
    }

    console.log(greet("Alice"));
    """
    
    let multipleParamFuncSnippet = """
    function add(a, b) {
        return a + b;
    }

    console.log(add(5, 3));
    """
    
    let creatingModules = """
    // myModule.js
    
    export function sayHello() {
        return "Hello from myModule!";
    }
    """
    
    let usingModules = """
    // main.js
    
    import { sayHello } from './myModule.js';

    console.log(sayHello());
    """
    
    let readFileSnippet = """
    const fs = require('fs');

    fs.readFile('example.txt', 'utf8', (err, data) => {
        if (err) throw err;
        console.log(data);
    });
    """
    
    let writeFileSnippet = """
    const fs = require('fs');

    fs.writeFile('example.txt', 'Hello, World!', (err) => {
        if (err) throw err;
        console.log('File has been written');
    });
    """
    
    let tryCatchSnippet = """
    try {
        let result = 10 / 0;
    } catch (error) {
        console.log("Error: Division by zero is not allowed.");
    }
    """
    
    let oopSnippet = """
    class Dog {
        constructor(name, age) {
            this.name = name;
            this.age = age;
        }

        bark() {
            return "Woof!";
        }
    }

    const dog1 = new Dog("Buddy", 3);
    console.log(dog1.bark());
    """
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                SectionView(title: "What is JavaScript?", description: "JavaScript is a high-level, interpreted programming language that is widely used in web development for creating interactive effects within web browsers.")
                
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
            
            NavigationLink(destination: JSQuizView(), isActive: $isShowingQuizView) {
                EmptyView()
            }
            .cornerRadius(10)
        }
    }
}

#Preview {
    JavaScriptView()
}
