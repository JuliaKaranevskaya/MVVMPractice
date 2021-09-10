//
//  TableViewModelType.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int 
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
