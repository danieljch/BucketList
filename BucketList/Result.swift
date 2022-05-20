//
//  Result.swift
//  BucketList
//
//  Created by Daniel Jesus Callisaya Hidalgo on 20/5/22.
//

import Foundation
struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable,Comparable {
    
    var description: String {
        terms?["description"]?.first ?? "No further information"
    }
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
    static func < (lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
}
