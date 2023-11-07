//
//  Reservation Class.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation

class Reservation {
    var  reservationID: String
    let date: String
    let trip: Trip
    
    init(date: String, trip: Trip) {
       
        self.date = date;
        self.trip = trip;
        self.reservationID = "" ;
        
        self.reservationID = generateReservationID(for: trip)
    }
    
    private func generateReservationID(for trip: Trip) -> String {
        let randomNumber = Int.random(in: 500...700)
        let tripTypeSuffix = trip is Flight ? "F" : "T"
        return "\(randomNumber)-\(tripTypeSuffix)"
    }
    
    func display() {
        print("Reservation ID: \(reservationID)")
        print("Date of Departure: \(date)")
        trip.getTripDetails()
    }
}

