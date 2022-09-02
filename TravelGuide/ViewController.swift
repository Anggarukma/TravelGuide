//
//  ViewController.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 30/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Travel Guide"
        setTableView()
        view.addSubview(tableView)
        let APICaller = APICaller()
        APICaller.fetchData { (place) in
            print(place.self)
        }
      }
    
    func setTableView() {
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(CustomViewCell.self, forCellReuseIdentifier: CustomViewCell.identifier)
    tableView.frame = view.bounds
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: CustomViewCell.identifier, for: indexPath)
                return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
