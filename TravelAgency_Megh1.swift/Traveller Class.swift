//
//  Traveller Class.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation


class Traveller {
    let name: String
    let phoneNumber: String
    var passportNumber: Int?
    var reservationsList: [TripReservation]
    
    var balance: Double {
        var totalCost = 0.0
        for reservation in reservationsList {
            totalCost += reservation.cost
        }
        return totalCost
    }
    
    init(name: String, phoneNumber: String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.reservationsList = []
    }
    
    init(name: String, phoneNumber: String, passportNumber: Int) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.passportNumber = passportNumber
        self.reservationsList = []
    }
}

class TripReservation {
    let cost: Double
    
    init(cost: Double) {
        self.cost = cost
    }
}






