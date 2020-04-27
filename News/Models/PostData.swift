//
//  PostData.swift
//  News
//
//  Created by Danish Khan on 26/04/20.
//  Copyright © 2020 Danish Khan. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable,Identifiable {
    var id: String{
        return objectID
    }
    let points: Int
    let title: String
    let objectID: String
    let url: String?
}
