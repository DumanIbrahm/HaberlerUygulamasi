//
//  NewsViewModel.swift
//  HaberlerUygulamasi
//
//  Created by İbrahim Duman on 31.03.2023.
//

import Foundation

struct NewsTableViewModel{
    let newsList : [News]
    
    func numberOfRowsInSEction() -> Int{
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index : Int) -> NewsViewModel{
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}


struct NewsViewModel{
    let news : News
    
    var title : String{
        return self.news.title
    }
    var description : String{
        return self.news.story
    }
    
    
}
