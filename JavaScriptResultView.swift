//
//  JavaScriptResultView.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 6/18/24.
//


import SwiftUI

struct JavaScriptResultView: View {
    @ObservedObject var viewModel = JavaScriptQuizViewModel()
    @State private var isShowingContentView = false
    
    var body: some View {
        VStack {
            ZStack {
                // Background Circle (red)
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.red, lineWidth: 15)
                    .frame(width: 270, height: 270)
                
                // Foreground Circle (green)
                Circle()
                    .trim(from: 0, to: CGFloat(viewModel.score) / CGFloat(viewModel.questions.count))
                    .stroke(Color.green, lineWidth: 15)
                    .frame(width: 270, height: 270)
                    .rotationEffect(.degrees(-90))
                
                // Inner White Circle
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 100)
                
                Text("Your Score: \(viewModel.score)/\(viewModel.questions.count)")
                    .font(.largeTitle)
                    .padding()
                
            }
            .padding()
            
            
            Button(action: {
                isShowingContentView = true
            }) {
                Text("Return to Homepage")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // NavigationLink that gets triggered by the state variable
            NavigationLink(destination: ContentView(), isActive: $isShowingContentView) {
                EmptyView()
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

// Preview
struct JavaScriptResultView_Previews: PreviewProvider {
    static var previews: some View {
        PythonResultView(viewModel: PythonQuizViewModel())
    }
}
