//
//  TableViewCell.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "TableViewCell"
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            planeLabel.text = viewModel.destination
            priceLabel.text = viewModel.price
        }
    }

    let planeLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addLabels()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addLabels() {
        addPlaneLabel()
        addPriceLabel()
    }
    
    private func addPlaneLabel() {
        contentView.addSubview(planeLabel)
        planeLabel.translatesAutoresizingMaskIntoConstraints = false
        planeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30).isActive = true
        planeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        planeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        planeLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
    private func addPriceLabel() {
        contentView.addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.topAnchor.constraint(equalTo: planeLabel.bottomAnchor).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
}
