//
//  Video.swift
//  Youtube Clone
//
//  Created by MACBOOK on 15/03/21.
//

import Foundation

struct Video : Decodable{
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys : String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        // memakai "=" karena ditranslate jika nama data nya sudah sama tidak perlu
        
        case title
        case description
        case thumbnail = "url"
        case videoId
    }
    
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnail)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        let resourceIdContainer = try
            snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        // keyedBy = enumnya
        // forkey = casenya
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
        
        
    }
}
