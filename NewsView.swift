//
//  NewsView.swift
//  NewsApp
//
//  Created by Tanmay Avinash Dabhade on 6/19/24.
//

import SwiftUI

struct NewsView: View {
    @ObservedObject var newsService = NewsService()

    var body: some View {
        VStack{
            Text("Tech News")
                .font(.largeTitle)
                .bold()
                .padding(.top, 16) // Adjust the top padding value as needed

                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Spacer().frame(height: 20)
            
            
        
            List(newsService.articles) { article in
                NavigationLink(destination: DetailView(article: article)) {
                    HStack {
                        if let urlToImage = article.urlToImage, let url = URL(string: urlToImage) {
                            AsyncImage(url: url)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                        VStack(alignment: .leading) {
                            Text(article.title)
                                .font(.headline)
                            Text(article.description ?? "")
                                .font(.subheadline)
                                .lineLimit(2)
                        }
                    }
                }

            }

        }
            

        .onAppear {
            newsService.fetchNews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
