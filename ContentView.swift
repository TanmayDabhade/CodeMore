//
//  ContentView.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 4/12/24.
//
// Vars:
// Private Vars: isShowingPythonView - set to false, later changes to true on button event
//               isShowingJavascriptView - set to false, later changes to true on button event
//               isShowingSwiftView - set to false, later changes to true on button event




import SwiftUI



struct ContentView: View {
    @State private var isShowingPythonView = false
    @State private var isShowingJavascriptView = false
    @State private var isShowingSwiftView = false
    @State private var isShowingNewsView = false


    var body: some View {
        NavigationView {
            VStack {
                Text("Home")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 16) // Adjust the top padding value as needed
                    .padding(.bottom, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Spacer().frame(height: 20)
                    
                
                
//                  Button - JavaScript
                Button(action: {
                                isShowingJavascriptView = true
                            }) {
                                Text("Javascript")
                                    .font(.title)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.gray)
                                            .frame(width: 350, height: 100)
                                    )
                            }



                NavigationLink(destination: JavaScriptView(), isActive: $isShowingJavascriptView) {
                    EmptyView()
                }
                Spacer()
                // Button - Python
                Button(action: {
                    isShowingPythonView = true
                }) {
                    Text("Python")
                        .font(.title)
                        .padding()
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 350, height: 100)
                        )
                }

                NavigationLink(destination: PythonView(), isActive: $isShowingPythonView) {
                    EmptyView()
                }
                    
                
                Spacer()
                // Button - Swift
                Button(action: {
                    isShowingSwiftView = true
                }) {
                    Text("Swift")
                        .font(.title)
                        .padding()
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 350, height: 100)
                        )
                }
                

                NavigationLink(destination: SwiftView(), isActive: $isShowingSwiftView) {
                    EmptyView()
                }
                
                Spacer()
                
                
                Button(action: {
                    isShowingNewsView = true
                }) {
                    Text("Tech News")
                        .font(.title)
                        .padding()
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                
                                .frame(width: 350, height: 60)
                        )
                }
                

                NavigationLink(destination: NewsView(), isActive: $isShowingNewsView) {
                    EmptyView()
                }
                
                Spacer()
                
                Text("Adding More Languages Soon...")
                    .font(.title2)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView()
}



