//
//  CyrptoCrazyViewCell.swift
//  CryptoCrazy
//
//  Created by Doğanay Şahin on 2.10.2021.
//

import UIKit

class CyrptoCrazyViewCell: UITableViewCell {

    @IBOutlet weak var priceText: UILabel!
    @IBOutlet weak var currencyText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
