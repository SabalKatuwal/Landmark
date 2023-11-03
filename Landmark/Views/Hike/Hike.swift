//
//  Hike.swift
//  Landmark
//
//  Created by Sabal on 10/25/23.
//

import Foundation

struct Hike: Hashable, Identifiable, Codable {
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observation: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String{
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    
    struct Observation: Codable, Hashable {
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        var distanceFromStart: Int
    }
   
    
}
