//
//  Apple_AcademyApp.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 4/12/24.
//

import SwiftUI
import Combine

@main



struct Apple_AcademyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppState: ObservableObject {
    @Published var currentView: AppView = .home
}

enum AppView {
    case home
    case quiz
    case result
}


struct SectionView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            if (!title.isEmpty){
                Text(title)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)
            }
            if (!description.isEmpty){
                    Text(description)
                        .font(.subheadline)
                        .padding(.top)
            }
            
        }
    }
}

struct CodeSnippetView: View {
    let title: String
    let snippet: String
    @State private var showAlert = false
    
    var body: some View {
        VStack(alignment: .leading) {
            if !title.isEmpty {
                Text(title)
                    .font(.title2)
                    .bold()
            }
            Text(snippet)
                .font(.system(.body, design: .monospaced))
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Button(action: {
                UIPasteboard.general.string = snippet
                showAlert = true
                print("Copied to clipboard: \(snippet)") // Debugging line to check if the action is executed
            }) {
                Text("Copy Code")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(10)
            }
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            .alert(isPresented: $showAlert) {
                            Alert(title: Text("Copied"), message: Text("The code snippet has been copied to the clipboard."), dismissButton: .default(Text("OK")))
                        }
                        .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.top)
    }
}


struct TextDescriptionsView: View {
    let descriptions: [(String, String)]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(descriptions, id: \.0) { (title, description) in
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .font(.title2)
                        .padding(.top)
                    Text(description)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct Question {
    let text: String
    let options: [String]
    let correctAnswer: String
}

class ViewRouter: ObservableObject {
    @Published var currentView: String = "start"
}
