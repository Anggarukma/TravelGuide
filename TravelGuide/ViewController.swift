//
//  ViewController.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 30/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    
    var myPlace = [Place]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Travel Guide"
        setTableView()
        view.addSubview(tableView)
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
        return dummyTravelData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(
              withIdentifier: "CustomViewCell",
              for: indexPath
            ) as? CustomViewCell {
            
            let travel = dummyTravelData[indexPath.row]
            cell.titleLabel.text = travel.name
            cell.travelImageView.image = travel.image

            
          return cell
        } else {
            
          return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = DetailViewController()
        vc.myPlace = dummyTravelData[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
