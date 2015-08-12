//
//  CustomCellRegra.swift
//  ARegraEClara
//
//  Created by Wesllei on 10/08/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class CustomCellRegra: UITableViewCell {
    
    @IBOutlet weak var lbNumeroRegra: UILabel!
    
    @IBOutlet weak var lbTituloRegra: UILabel!
    
    @IBOutlet weak var imgRegra: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated:animated)
    }

}
