//
//  HomeView.swift
//  Apple Academy
//
//  Created by Tanmay Avinash Dabhade on 6/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
//            Text("Python")
//                .bold()
//                .font(.largeTitle)
//                .padding()
//                .cornerRadius(10)
            
            Text("What is Python?")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
                .cornerRadius(10)
            Text("Python is a high-level, interpreted programming language known for its simplicity and readability. It's widely used in web development, data analysis, artificial intelligence, scientific computing, and more.")
                .font(.subheadline)
                .padding(.leading)
                .cornerRadius(10)
            
            
            
            // RoundedRectangle(cornerRadius: 20)
            //     .frame(width: 370, height: 400)
            //     .foregroundColor(.white)
            //     .shadow(radius: 10)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    HomeView()
}
