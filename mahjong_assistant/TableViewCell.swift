//
//  TableViewCell.swift
//  mahjong_assistant
//
//  Created by 平岡煌琉 on 2020/12/10.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var player1name: UILabel!
    @IBOutlet weak var player2name: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
