//
//  NewsService.swift
//  NewsApp
//
//  Created by Tanmay Avinash Dabhade on 6/19/24.
//

import Foundation
import Combine

class NewsService: ObservableObject {
    @Published var articles = [Article]()
    
    var cancellable: AnyCancellable?
    
    var API_KEY: String = ""
    
    init() {
            self.API_KEY = loadAPIKey()
   
            fetchNews()
        }
        
        func loadAPIKey() -> String {
            guard let filePath = Bundle.main.path(forResource: "env", ofType: "plist"),
                  let plist = NSDictionary(contentsOfFile: filePath),
                  let key = plist["API_KEY"] as? String else {
                fatalError("Could not load API key from plist")
            }
            return key
        }
    
    
    func fetchNews() {
        let api_url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=\(API_KEY)"
    

        
        guard !API_KEY.isEmpty, let url = URL(string: api_url) else { return }
        

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: NewsResponse.self, decoder: JSONDecoder())
            .map { $0.articles }
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: \.articles, on: self)
        
 
    }
}

