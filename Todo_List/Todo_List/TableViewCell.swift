//
//  TableViewCell.swift
//  Todo_List
//
//  Created by Thomas Routin on 10/01/2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var myNom: UILabel! // Label du nom de la tâche
    @IBOutlet weak var myDesc: UILabel! // Label de la description de la tâche
    @IBOutlet weak var myDate: UILabel! // Label de la date de la tâche
    @IBOutlet weak var myCheck: UISwitch! // Bouton de validation de la tâche
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
