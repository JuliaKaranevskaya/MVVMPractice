//
//  ViewController.swift
//  MVVMPractice
//
//  Created by Юлия Караневская on 10.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    var planes: [Plane]?
    
    let tableView: UITableView = {
        let tv = UITableView()
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        planes = [
            Plane(destination: "Berlin", price: 120.0),
            Plane(destination: "Vilnus", price: 60.0),
            Plane(destination: "Barselona", price: 230.0)
        ]
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planes?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell else {
            return UITableViewCell()
        }
        
        guard let planes = planes else {
            return UITableViewCell()
        }
        
        let plane = planes[indexPath.row]
        
        tableViewCell.planeLabel.text = plane.destination
        tableViewCell.priceLabel.text = "$\(plane.price)"
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

