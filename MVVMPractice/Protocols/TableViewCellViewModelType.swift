//
//  TableViewCellViewModelType.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    
    var destination: String { get }
    var price: String { get }
}
