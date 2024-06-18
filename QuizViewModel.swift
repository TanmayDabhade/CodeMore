//
//  QuizViewModel.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 6/6/24.
//

import Combine
class PythonQuizViewModel: ObservableObject {
    @Published var questions: [Question] = [
        Question(
            text:"What is the output of print(2 ** 3 ** 2)?",
            options:["64", "512", "729", "6561"],
            correctAnswer:"512"
        ),
        Question(
            text:"Which method is used to add an element at the end of a list in Python?",
            options:["append()", "insert()", "add()", "extend()"],
            correctAnswer:"append()"
        ),
        Question(
            text:"What is the result of the expression 5 // 2?",
            options:["2.5", "2", "3", "2.0"],
            correctAnswer:"2"
        ),
        Question(
            text:"Which of the following is not a valid set operation?",
            options:["union", "intersection", "difference", "append"],
            correctAnswer:"append"
        ),
        Question(
            text:"What does the 'pass' statement do in Python?",
            options:["Exits the program", "Skips the current iteration", "Does nothing", "Raises an error"],
            correctAnswer:"Does nothing"
        ),
        Question(
            text:"What is the output of print([1, 2, 3] + [4, 5, 6])?",
            options:["[1, 2, 3, 4, 5, 6]", "[5, 7, 9]", "[1, 2, 3, 4, 5, 6, 7, 8, 9]", "TypeError"],
            correctAnswer:"[1, 2, 3, 4, 5, 6]"
        ),
        Question(
            text:"Which of the following is a keyword in Python?",
            options:["val", "let", "with", "mutable"],
            correctAnswer:"with"
        ),
        Question(
            text:"What is the output of print(type(lambda x: x))?",
            options:["<class 'function'>", "<class 'lambda'>", "<class 'method'>", "<class 'closure'>"],
            correctAnswer:"<class 'function'>"
        ),
        Question(
            text:"Which function is used to get the ASCII value of a character in Python?",
            options:["char()", "ord()", "ascii()", "chr()"],
            correctAnswer:"ord()"
        ),
        Question(
            text:"What is the output of print(0.1 + 0.2 == 0.3)?",
            options:["True", "False", "None", "Error"],
            correctAnswer:"False"
        ),
        Question(
            text:"Which module in Python supports regular expressions?",
            options:["regex", "pyregex", "re", "regexp"],
            correctAnswer:"re"
        ),
        Question(
            text:"What will be the output of print('Hello' * 3)?",
            options:["HelloHelloHello", "Hello 3 times", "HelloHello Hello", "Error"],
            correctAnswer:"HelloHelloHello"
        ),
        Question(
            text:"Which of the following will create an empty set in Python?",
            options:["{}", "set()", "[]", "None of the above"],
            correctAnswer:"set()"
        ),
        Question(
            text:"What is the output of print(3 <= 3 < 4)?",
            options:["True", "False", "Error", "None"],
            correctAnswer:"True"
        ),
        Question(
            text:"What is the correct syntax to import a specific function 'sqrt' from a module 'math'?",
            options:["import math.sqrt", "from math import sqrt", "import sqrt from math", "from math import math.sqrt"],
            correctAnswer:"from math import sqrt"
        ),
        Question(
            text:"What will be the output of print('1,2,3'.split(','))?",
            options:["['1', '2', '3']", "['1,2,3']", "['1', ' 2', ' 3']", "['1 2 3']"],
            correctAnswer:"['1', '2', '3']"
        ),
        Question(
            text:"What does the built-in function eval() do?",
            options:["Evaluates a string as Python code", "Evaluates the length of a string", "Returns the memory address of an object", "Returns the data type of an object"],
            correctAnswer:"Evaluates a string as Python code"
        ),
        Question(
            text:"What is the output of print(type([]) is list)?",
            options:["True", "False", "None", "Error"],
            correctAnswer:"True"
        ),
        Question(
            text:"Which of the following will raise a KeyError?",
            options:["{}['key']", "dict().get('key')", "set().remove('item')", "list().pop()"],
            correctAnswer:"{}['key']"
        ),
        Question(
            text:"What is the correct way to create a generator in Python?",
            options:["[]", "()", "{}", "[]()"],
            correctAnswer:"()"
        )
    ]
    @Published var selectedAnswers: [Int: String] = [:]
    @Published var score: Int = 0
    @Published var isSubmitted: Bool = false

    func calculateScore() {
        score = 0
        for (index, question) in questions.enumerated() {
            if selectedAnswers[index] == question.correctAnswer {
                score += 1
            }
        }
        isSubmitted = true
    }
}


class JavaScriptQuizViewModel: ObservableObject {
    @Published var questions: [Question] = [
        Question(
            text:"What is the output of `console.log(typeof NaN)`?",
            options:["'number'", "'NaN'", "'undefined'", "'object'"],
            correctAnswer:"'number'"
        ),
        Question(
            text:"Which method is used to add an element at the end of an array in JavaScript?",
            options:["append()", "insert()", "push()", "add()"],
            correctAnswer:"push()"
        ),
        Question(
            text:"What is the result of the expression `3 + 2 + '7'`?",
            options:["'327'", "'12'", "12", "57"],
            correctAnswer:"'57'"
        ),
        Question(
            text:"Which of the following is not a valid array method in JavaScript?",
            options:["forEach", "map", "reduce", "apply"],
            correctAnswer:"apply"
        ),
        Question(
            text:"What does the `typeof` operator return for an array?",
            options:["'array'", "'object'", "'undefined'", "'number'"],
            correctAnswer:"'object'"
        ),
        Question(
            text:"What is the output of `console.log(0.1 + 0.2 === 0.3)`?",
            options:["True", "False", "Undefined", "Error"],
            correctAnswer:"False"
        ),
        Question(
            text:"Which built-in method combines the text of two strings and returns a new string?",
            options:["append()", "concat()", "attach()", "None of the above"],
            correctAnswer:"concat()"
        ),
        Question(
            text:"Which statement is used to declare a variable in JavaScript?",
            options:["var", "let", "const", "All of the above"],
            correctAnswer:"All of the above"
        ),
        Question(
            text:"What will be the output of `console.log('5' - 3)`?",
            options:["2", "'2'", "53", "Error"],
            correctAnswer:"2"
        ),
        Question(
            text:"Which company developed JavaScript?",
            options:["Microsoft", "Sun Microsystems", "Netscape", "IBM"],
            correctAnswer:"Netscape"
        ),
        Question(
            text:"What will be the output of `console.log(typeof undefined == typeof NULL)`?",
            options:["True", "False", "Error", "None"],
            correctAnswer:"True"
        ),
        Question(
            text:"Which of the following is not a JavaScript data type?",
            options:["Number", "Boolean", "Float", "String"],
            correctAnswer:"Float"
        ),
        Question(
            text:"What is the use of the `isNaN` function?",
            options:["Returns true if the argument is not a number", "Returns true if the argument is a number", "Both", "None"],
            correctAnswer:"Returns true if the argument is not a number"
        ),
        Question(
            text:"Which of the following is correct about features of JavaScript?",
            options:["It can not handle dates and time.", "JavaScript is a object-based scripting language.", "JavaScript is not an interpreter based scripting language.", "All of the above"],
            correctAnswer:"JavaScript is a object-based scripting language."
        ),
        Question(
            text:"Which of the following is not considered a reserved word in JavaScript?",
            options:["interface", "throws", "program", "short"],
            correctAnswer:"program"
        ),
        Question(
            text:"What is the output of `console.log(1 + '1' - 1)`?",
            options:["10", "11", "1", "0"],
            correctAnswer:"10"
        ),
        Question(
            text:"Which method returns the character at the specified index?",
            options:["charAt()", "getCharAt()", "characterAt()", "None of the above"],
            correctAnswer:"charAt()"
        ),
        Question(
            text:"What will be the output of `console.log(1 === '1')`?",
            options:["True", "False", "Error", "None"],
            correctAnswer:"False"
        ),
        Question(
            text:"How do you create an object in JavaScript?",
            options:["var obj = {}", "var obj = []", "var obj = new Object()", "Both A and C"],
            correctAnswer:"Both A and C"
        ),
        Question(
            text:"What is the purpose of `Array.prototype.slice.call(arguments)`?",
            options:["To convert the arguments object into an array", "To create a shallow copy of an array", "To call a method with a different this value", "None of the above"],
            correctAnswer:"To convert the arguments object into an array"
        )
    ]
    @Published var selectedAnswers: [Int: String] = [:]
    @Published var score: Int = 0
    @Published var isSubmitted: Bool = false

    func calculateScore() {
        score = 0
        for (index, question) in questions.enumerated() {
            if selectedAnswers[index] == question.correctAnswer {
                score += 1
            }
        }
        isSubmitted = true
    }
}


class SwiftQuizViewModel: ObservableObject {
    @Published var questions: [Question] = [
        Question(
            text:"What is the output of `print(2 ** 3)` in Swift?",
            options:["8", "Error", "6", "None"],
            correctAnswer:"Error"
        ),
        Question(
            text:"Which keyword is used to declare a constant in Swift?",
            options:["let", "var", "const", "define"],
            correctAnswer:"let"
        ),
        Question(
            text:"What is the default value of an uninitialized variable in Swift?",
            options:["nil", "0", "undefined", "None"],
            correctAnswer:"nil"
        ),
        Question(
            text:"Which of the following is a valid way to declare an array in Swift?",
            options:["var arr = []", "var arr: [Int] = []", "var arr = Array()", "var arr = [Int]()"],
            correctAnswer:"var arr = [Int]()"
        ),
        Question(
            text:"What is the correct way to define a function in Swift?",
            options:["func myFunction() {}", "function myFunction() {}", "def myFunction() {}", "void myFunction() {}"],
            correctAnswer:"func myFunction() {}"
        ),
        Question(
            text:"What is the output of `print(\"Hello\" + \" World\")`?",
            options:["Hello World", "Error", "HelloWorld", "None"],
            correctAnswer:"Hello World"
        ),
        Question(
            text:"Which of the following is a tuple in Swift?",
            options:["(1, 2, 3)", "[1, 2, 3]", "{1, 2, 3}", "<1, 2, 3>"],
            correctAnswer:"(1, 2, 3)"
        ),
        Question(
            text:"How do you declare an optional variable in Swift?",
            options:["var name: String?", "var name = Optional<String>", "var name: String!", "var name = nil"],
            correctAnswer:"var name: String?"
        ),
        Question(
            text:"What is the output of `print(\"\\(2 + 3)\")`?",
            options:["5", "(2 + 3)", "\\(2 + 3)", "None"],
            correctAnswer:"5"
        ),
        Question(
            text:"Which method is used to append an element to an array in Swift?",
            options:["append()", "add()", "insert()", "push()"],
            correctAnswer:"append()"
        ),
        Question(
            text:"Which keyword is used for error handling in Swift?",
            options:["catch", "handle", "try", "throw"],
            correctAnswer:"try"
        ),
        Question(
            text:"How do you iterate over a dictionary in Swift?",
            options:["for (key, value) in dictionary {}", "for key in dictionary {}", "for each (key, value) in dictionary {}", "for dictionary as (key, value) {}"],
            correctAnswer:"for (key, value) in dictionary {}"
        ),
        Question(
            text:"What is the correct way to declare a computed property in Swift?",
            options:["var area: Int { return width * height }", "var area = width * height", "let area = width * height", "func area() -> Int { return width * height }"],
            correctAnswer:"var area: Int { return width * height }"
        ),
        Question(
            text:"How do you define a closure in Swift?",
            options:["{ (parameters) -> returnType in statements }", "{ parameters -> returnType: statements }", "[parameters -> returnType in statements]", "(parameters) -> returnType in statements"],
            correctAnswer:"{ (parameters) -> returnType in statements }"
        ),
        Question(
            text:"What will be the output of `print(1...5)`?",
            options:["1, 2, 3, 4, 5", "Range(1...5)", "1 to 5", "Error"],
            correctAnswer:"Range(1...5)"
        ),
        Question(
            text:"How do you handle nil values in Swift?",
            options:["Using the nil coalescing operator (??)", "Using the null coalescing operator (??)", "Using the nil checking operator (??)", "Using the null checking operator (??)"],
            correctAnswer:"Using the nil coalescing operator (??)"
        ),
        Question(
            text:"Which of the following is a valid dictionary declaration in Swift?",
            options:["var dict: [String: Int] = [:]", "var dict = [String: Int]()", "var dict: Dictionary<String, Int> = []", "var dict: [String, Int] = [:]"],
            correctAnswer:"var dict: [String: Int] = [:]"
        ),
        Question(
            text:"How do you unwrap an optional value in Swift?",
            options:["Using the exclamation mark (!)", "Using the question mark (?)", "Using the dollar sign ($)", "Using the ampersand (&)"],
            correctAnswer:"Using the exclamation mark (!)"
        ),
        Question(
            text:"What is the purpose of guard statements in Swift?",
            options:["To exit a function early if a condition is not met", "To declare variables", "To handle exceptions", "To define functions"],
            correctAnswer:"To exit a function early if a condition is not met"
        ),
        Question(
            text:"Which of the following keywords is used to define a class in Swift?",
            options:["class", "struct", "interface", "module"],
            correctAnswer:"class"
        )
    ]
    @Published var selectedAnswers: [Int: String] = [:]
    @Published var score: Int = 0
    @Published var isSubmitted: Bool = false

    func calculateScore() {
        score = 0
        for (index, question) in questions.enumerated() {
            if selectedAnswers[index] == question.correctAnswer {
                score += 1
            }
        }
        isSubmitted = true
    }
}
