//
//  DetailViewController.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    private let items: [String]
    
    init(items: [String]) {
        self.items = items
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
    }
  
}
