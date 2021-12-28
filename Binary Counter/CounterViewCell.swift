//
//  CounterViewCell.swift
//  Binary Counter
//
//  Created by admin on 28/12/2021.
//

import UIKit

//#1
protocol updateTotal{
    func updateCurrentTotal(updateType: Int, updateAmount: Int)
}

class CounterViewCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    
    var delegate: updateTotal?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func minusButtonPressed(_ sender: Any) {
        let currentNumber: Int? = Int(numberLabel.text!)
        //#2
        delegate?.updateCurrentTotal(updateType: 1, updateAmount: currentNumber!)
    }
    
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        let currentNumber: Int? = Int(numberLabel.text!)
        //#2
        delegate?.updateCurrentTotal(updateType: 2, updateAmount: currentNumber!)
        //numberLabel.text = "pressed"
        
    }
}
