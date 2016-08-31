//
//  UserCell.swift
//  SnapDevChat
//
//  Created by Pavlos Nicolaou on 31/08/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var firstNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCheckmark(selected: false)
    }
    
    func updateUI(user: User) {
        firstNameLbl.text = user.firstName
    }
    
    func setCheckmark(selected: Bool){
        let imageStr = selected ? "messageindicatorchecked1" : "messageindicator1"
        self.accessoryView = UIImageView(image: UIImage(named: imageStr))
    }
}
