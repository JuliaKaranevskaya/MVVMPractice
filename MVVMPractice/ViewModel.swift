//
//  ViewModel.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import Foundation

class ViewModel {
    
    var plane = Plane(destination: "Berlin", price: 120.0)
    
    var destination: String {
        get {
            return plane.destination
        }
    }
    
    var price: String {
        get {
            return "$\(plane.price)"
        }
    }
}
