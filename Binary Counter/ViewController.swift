//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 28/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterTabelView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterTabelView.dataSource = self
        totalLabel.text = "0"
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = counterTabelView.dequeueReusableCell(withIdentifier: "CounterCell", for: indexPath) as! CounterViewCell
        
        //add text to the cell using custom design
        let number = Int(pow(Double(10),Double(indexPath.row)))
        cell.numberLabel.text = "\(number)"
        cell.delegate = self //#4
        return cell
    }
}

//#3
extension ViewController: updateTotal{
    func updateCurrentTotal(updateType: Int, updateAmount: Int) {
        if updateType == 1 {
            total = total - updateAmount
        } else if updateType == 2 {
            total = total + updateAmount
        }
        totalLabel.text = "\(total)"
    }
}
