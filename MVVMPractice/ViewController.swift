//
//  ViewController.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    let destinationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    var viewModel: ViewModel? {
        didSet {
            destinationLabel.text = viewModel?.destination
            priceLabel.text = viewModel?.price
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupLabels()
    }
    
    private func setupLabels() {
        setupDestinationLabel()
        setupPriceLabel()
    }
    
    private func setupDestinationLabel() {
        view.addSubview(destinationLabel)
        destinationLabel.translatesAutoresizingMaskIntoConstraints = false
        destinationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        destinationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        destinationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        destinationLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupPriceLabel() {
        view.addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.topAnchor.constraint(equalTo: destinationLabel.bottomAnchor, constant: 10).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}


