//
//  Article.swift
//  NewsApp
//
//  Created by Tanmay Avinash Dabhade on 6/19/24.
//

import Foundation

struct Article: Decodable, Identifiable {
    var id: UUID {
        return UUID()
    }
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
}

struct NewsResponse: Decodable {
    let articles: [Article]
}

