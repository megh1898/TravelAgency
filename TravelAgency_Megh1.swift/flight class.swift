//
//  flight class.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation


class Flight: Trip {
    let flightNumber: String
    let distance: Double
    
    init(flightNumber: String, departure: String, arrival: String, distance: Double) {
        self.flightNumber = flightNumber
        self.distance = distance
        super.init(departure: departure, arrival: arrival)
    }
    
    override func getTripDetails() {
        super.getTripDetails()
        print("Flight \(flightNumber), Departing \(departure) and arriving \(arrival)")
    }
    
    func calculateCost() -> Double {
        return 1000 + (0.75 * distance)
    }
}

