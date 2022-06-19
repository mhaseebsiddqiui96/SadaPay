//
//  APIModels.swift
//  SadaPayDemo
//
//  Created by Muhammad Haseeb Siddiqui on 6/20/22.
//

import Foundation

struct APIRepoListModel : Codable {
    let total_count : Int?
    let incomplete_results : Bool?
    let items : [APIRepositoryItem]?
    
    enum CodingKeys: String, CodingKey {
        
        case total_count = "total_count"
        case incomplete_results = "incomplete_results"
        case items = "items"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        total_count = try values.decodeIfPresent(Int.self, forKey: .total_count)
        incomplete_results = try values.decodeIfPresent(Bool.self, forKey: .incomplete_results)
        items = try values.decodeIfPresent([APIRepositoryItem].self, forKey: .items)
    }
    
}
//MARK: - Api single product model
struct APIProductModel : Codable {
    let created_at : String?
    let price : String?
    let name : String?
    let uid : String?
    let image_ids : [String]?
    let image_urls : [String]?
    let image_urls_thumbnails : [String]?

    enum CodingKeys: String, CodingKey {

        case created_at = "created_at"
        case price = "price"
        case name = "name"
        case uid = "uid"
        case image_ids = "image_ids"
        case image_urls = "image_urls"
        case image_urls_thumbnails = "image_urls_thumbnails"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        price = try values.decodeIfPresent(String.self, forKey: .price)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        uid = try values.decodeIfPresent(String.self, forKey: .uid)
        image_ids = try values.decodeIfPresent([String].self, forKey: .image_ids)
        image_urls = try values.decodeIfPresent([String].self, forKey: .image_urls)
        image_urls_thumbnails = try values.decodeIfPresent([String].self, forKey: .image_urls_thumbnails)
    }

}

//MARK: - Pagination

struct Pagination : Codable {
    let key : String?

    enum CodingKeys: String, CodingKey {

        case key = "key"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        key = try values.decodeIfPresent(String.self, forKey: .key)
    }

}

