//
//  Train class.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation


class Train: Trip {
    let trainNumber: String
    let distance: Double
    let days: Int
    var carriageType: CarriageType
    
    enum CarriageType {
        case sleeper
        case seating
    }

    
    init(trainNumber: String, departure: String, arrival: String, distance: Double, days: Int, carriageType: CarriageType = .seating) {
        self.trainNumber = trainNumber
        self.distance = distance
        self.days = days
        self.carriageType = carriageType
        super.init(departure: departure, arrival: arrival)
    }
    
    override func getTripDetails() {
        super.getTripDetails()
        print("Carriage Type: \(carriageType)")
    }
    
    func calculateCost() -> Double {
        var costPerDay: Double
        switch carriageType {
        case .sleeper:
            costPerDay = 100 + 200
        case .seating:
            costPerDay = 200
        }
        
        return costPerDay * Double(days)
    }
}





