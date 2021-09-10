//
//  ViewModel.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    var planes = [
        Plane(destination: "Berlin", price: 120.0),
        Plane(destination: "Vilnus", price: 60.0),
        Plane(destination: "Barselona", price: 230.0)
    ]
    
    func numberOfRows() -> Int {
            return planes.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let plane = planes[indexPath.row]
        return TableViewCellViewModel(plane: plane)
    }
    
}
