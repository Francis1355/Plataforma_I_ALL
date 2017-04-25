//
//  TableViewCellMia.swift
//  2DA_EVA_5_TABLEVIEW
//
//  Created by TEMPORAL2 on 15/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class TableViewCellMia: UITableViewCell {
    
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblUbicacion: UILabel!
    @IBOutlet var lblDescripcion: UILabel!
    @IBOutlet var imgImagen: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
