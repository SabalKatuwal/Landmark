//
//  Landmark.swift
//  Landmark
//
//  Created by Sabal on 10/18/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        //By matching the names in the data file (Landmark.json), you can rely on the structure’s Codable conformance to load the data.
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var cordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
