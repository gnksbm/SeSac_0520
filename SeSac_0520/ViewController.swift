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
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designLabelUI(labelName: oneLabel, thisIsTextColor: .red)
        designLabelUI(labelName: twoLabel, thisIsTextColor: .yellow)
        designLabelUI(labelName: threeLabel, thisIsTextColor: .green)
        designButtonUI(oneButton)
        designButtonUI(twoButton)
        designButtonUI(threeButton)
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
        titleColor: UIColor = .red
    ) {
        button.setTitle("클릭", for: .normal)
        button.setTitleColor(titleColor, for: .normal)
    }
    
    @IBAction func oneButtonTapped(_ sender: UIButton) {
        oneLabel.text = "1"
    }
}
