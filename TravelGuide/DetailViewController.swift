//
//  DetailViewController.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    
    var image: UIImageView!
    var placeDescript: UILabel!
    var nameLabel: UILabel!
    var myPlace: Place? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        if let result = myPlace {
            nameLabel.text = result.name
            placeDescript.text = result.placeDescription
            image.image = result.image

        }
    }
}
