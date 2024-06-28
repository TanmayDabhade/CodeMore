//
//  DetailView.swift
//  NewsApp
//
//  Created by Tanmay Avinash Dabhade on 6/19/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var article: Article

    var body: some View {
        WebView(url: URL(string: article.url)!)
            .navigationBarTitle(Text(article.title), displayMode: .inline)
            
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(article: Article(title: "Sample Title", description: "Sample Description", url: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=45444ded7f9f424aaaeca9390bc56583", urlToImage: nil))
    }
}

