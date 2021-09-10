//
//  TableViewCellViewModel.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var plane: Plane
    
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
    
    init(plane: Plane) {
        self.plane = plane
    }
}
