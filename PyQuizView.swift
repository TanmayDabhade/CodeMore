import SwiftUI

struct PyQuizView: View {
    @ObservedObject var viewModel = PythonQuizViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Quiz")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 16) // Adjust the top padding value as needed
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                ScrollView {
                    VStack {
                        ForEach(0..<viewModel.questions.count, id: \.self) { index in
                            let question = viewModel.questions[index]
                            VStack(alignment: .leading) {
                                Text(question.text)
                                    .font(.headline)
                                ForEach(question.options, id: \.self) { option in
                                    Button(action: {
                                        viewModel.selectedAnswers[index] = option
                                    }) {
                                        HStack {
                                            Text(option)
                                            Spacer()
                                            if viewModel.selectedAnswers[index] == option {
                                                Image(systemName: "checkmark")
                                            }
                                        }
                                    }
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                                }
                            }
                            .padding()
                        }
                        
                        Button(action: {
                            viewModel.calculateScore()
                        }) {
                            Text("Submit")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
                
                NavigationLink(
                    destination: PythonResultView(viewModel: viewModel),
                    isActive: $viewModel.isSubmitted
                ) {
                    EmptyView()
                }
            }
            .onAppear {
                viewModel.isSubmitted = false
            }
        }
    }
}

#Preview {
    PyQuizView()
}
