//
//  ViewController.swift
//  SeSac_0520
//
//  Created by gnksbm on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    var countList = Array(repeating: 0, count: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designLabelUI(labelName: oneLabel, thisIsTextColor: .red)
        designLabelUI(labelName: twoLabel, thisIsTextColor: .orange)
        designLabelUI(labelName: threeLabel, thisIsTextColor: .green)
        designButtonUI(oneButton, title: "1번")
        designButtonUI(twoButton, title: "2번")
        designButtonUI(threeButton, title: "3번")
    }
    
    func designLabelUI(
        labelName: UILabel,
        thisIsTextColor textColor: UIColor = .brown
    ) {
        labelName.text = "0"
        labelName.textColor = textColor
        labelName.font = .boldSystemFont(ofSize: 30)
        labelName.textAlignment = .center
    }
    
    func designButtonUI(
        _ button: UIButton,
        titleColor: UIColor = .red,
        title: String = "클릭"
    ) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
    }
    
    @IBAction func oneButtonTapped(_ sender: UIButton) {
        countList[sender.tag] += 1
        let count = countList[sender.tag]
        labelList[sender.tag].text = "\(count)번"
    }
}
