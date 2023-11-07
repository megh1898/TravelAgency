//
//  TravelAgency Class.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation



class TravelAgency {
    func makeReservation(for traveller: Traveller, date: String, trip: Trip) -> Bool {
        if ((trip is Flight) != nil) != nil {
            
            if traveller.passportNumber == nil {
                print("Passport number is required for flight reservations.")
                return false
            }
            
            if !(1000...9999).contains(traveller.passportNumber!) {
                print("Invalid passport number.")
                return false
            }
        } else {
            print("Invalid trip object.")
            return false
        }
        
            

        _ = Reservation(date: date, trip: trip)
            traveller.reservationsList.append(TripReservation(cost: 0.0))
            return true
        }
    }

