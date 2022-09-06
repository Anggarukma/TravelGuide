//
//  DetailViewController.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    
    var image: UIImageView! = {
        return UIImageView()
    }()
    
    var placeDescript: UILabel! = {
        return UILabel()
    }()
    
    var nameLabel: UILabel! = {
        return UILabel()
    }()
    
    var myPlace: Place? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "angga"
        
    
        
        if let result = myPlace {
            nameLabel.text = result.name
            placeDescript.text = result.placeDescription
            image.image = result.image

        }
    }
    
  }
