//
//  CustomViewCell.swift
//  TravelGuide
//
//  Created by Hirtanto Angga on 30/08/22.
//

import UIKit

class CustomViewCell: UITableViewCell {

 static let identifier = "CustomViewCell"
    
    var travelImageView = UIImageView()
    var titleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(travelImageView)
        addSubview(titleLabel)
        
        setImageView()
        setTitleLabel()
        setImageConstraints()
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setImageView() {
        travelImageView.layer.cornerRadius = 10
        travelImageView.clipsToBounds      = true
        travelImageView.image = UIImage(named: "name")
    }
    
    
    func setTitleLabel() {
        titleLabel.numberOfLines = 2
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.text = "lorem jjbejabjbjabdjkabdjkbakjdbajkdbjkabdkjabdkabk"
    }
    
    
    func setImageConstraints() {
        travelImageView.translatesAutoresizingMaskIntoConstraints                                                = false
        travelImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                = true
        travelImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                  = true
        travelImageView.heightAnchor.constraint(equalToConstant: 90).isActive                                    = true
        travelImageView.widthAnchor.constraint(equalTo: travelImageView.heightAnchor, multiplier: 13/8).isActive = true
    }
    
    
    func setLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints                                                     = false
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                     = true
        titleLabel.leadingAnchor.constraint(equalTo: travelImageView.trailingAnchor, constant: 20).isActive      = true
        titleLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                         = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive                    = true
    }
}
