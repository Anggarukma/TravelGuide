//
//  Model.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 30/08/22.
//

import Foundation

// MARK: - Empty
struct travelModel: Codable {
    let error: Bool
    let message: String
    let count: Int
    let places: [Place]
}

// MARK: - Place
struct Place: Codable {
    let id: Int
    let name, placeDescription, address: String
    let longitude, latitude: Double
    let like: Int
    let image: String
}
