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
        let APICaller = APICaller()
        APICaller.fetchData { (places) in
            print(places.places)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
//            let imgUrl = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Kelimutu_2008-08-08.jpg/800px-Kelimutu_2008-08-08.jpg"
//            self.myPlace = places.places
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
        return myPlace.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: CustomViewCell.identifier)
//        let cell = tableView.dequeueReusableCell(withIdentifier: CustomViewCell.identifier, for: indexPath)
        
        let place = myPlace[indexPath.row]

        cell.textLabel?.text = place.placeDescription
        
        return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = DetailViewController(items: [])
        navigationController?.pushViewController(vc, animated: true)
    }
}
