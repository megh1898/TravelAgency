//
//  Trip.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation

class Trip: TripProtocol {
    var cost: Double = 0.0
    
    let departure: String
    let arrival: String
    
    init(departure: String, arrival: String) {
        self.departure = departure
        self.arrival = arrival
    }
    
    func getTripDetails() {
        print("Departing: \(departure), Arriving: \(arrival)")
    }
}
