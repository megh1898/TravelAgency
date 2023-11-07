//
//  main.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation

let flight = Flight(flightNumber: "NAC100", departure: "CDG", arrival: "NRT", distance: 5000.25)
let trainTrip1 = Train(trainNumber: "123789", departure: "Seattle", arrival: "New Orleans", distance: 11000.00, days: 2,carriageType: .sleeper)

let trainTrip2 = Train(trainNumber: "45193", departure: "NewYork", arrival: "WashingtonDC", distance: 5600.00, days: 2, carriageType: .seating)

let traveller1 = Traveller(name: "MEGH", phoneNumber: "(905)746-4901")
let traveller2 = Traveller(name: "RUSHI", phoneNumber:"(647)893-4901", passportNumber: 123)
let traveller3 = Traveller(name: "NEEl", phoneNumber: "(875)893-8101", passportNumber: 8000)

let travelAgency = TravelAgency()
//Flight Reservation
let flightReservation1 = travelAgency.makeReservation(for: traveller1, date: "2023-06-01", trip: flight)
print("Flight for Megh : \(flightReservation1 ? "Success" : "Failed")")

let flightReservation2 = travelAgency.makeReservation(for: traveller2, date: "2023-06-02", trip: flight)
print(" Flight For Rushi : \(flightReservation2 ? "Success" : "Failed")")

let flightReservation3 = travelAgency.makeReservation(for: traveller3, date: "2023-06-03", trip: flight)
print("Reservation for NEEL on Flight : \(flightReservation3 ? "Success" : "Failed")")
// train reservation
let trainReservation1 = travelAgency.makeReservation(for: traveller1, date: "2023-06-04", trip: trainTrip1)
print("For MEGH on Seattle To New Orleans train: \(trainReservation1 ? "Success" : "Failed")")

let trainReservation2 = travelAgency.makeReservation(for: traveller3, date: "2023-06-05", trip: trainTrip2)
print(" NEEL on NewYork To WashingtonDC train: \(trainReservation2 ? "Success" : "Failed")")


traveller1.reservationsList.append(TripReservation(cost: 100.0))
traveller2.reservationsList.append(TripReservation(cost: 200.0))
traveller3.reservationsList.append(TripReservation(cost: 150.0))

print("\n--- RUSHI ---")
print("Total reservations: \(traveller2.reservationsList.count)")
print("Amount owed: $\(traveller2.balance)")
print("\n--- NEEL---")
print("Total reservations: \(traveller3.reservationsList.count)")
print("Amount owed: $\(traveller3.balance)")
