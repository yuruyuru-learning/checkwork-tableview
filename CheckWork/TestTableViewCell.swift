//
//  TestTableViewCell.swift
//  CheckWork
//
//  Created by クワシマ・ユウキ on 2021/11/27.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet var test: UILabel!
    @IBOutlet var test2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(a1: String, a2: String){
        self.test.text = a1
        self.test2.text = a2
    }
}
