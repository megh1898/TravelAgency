//
//  Trip Protocol.swift
//  TravelAgency_Megh
//
//  Created by MEGH SHAH on 2023-05-23.
//

import Foundation

protocol TripProtocol {
    var departure: String { get }
    var arrival: String { get }
    var cost: Double { get }
    
    func getTripDetails()
}






