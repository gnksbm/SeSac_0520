//
//  OptionalViewController.swift
//  SeSac_0520
//
//  Created by gnksbm on 5/20/24.
//

import UIKit

final class OptionalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /*
     1. 배경을 탭 했을 때 키보드를 내리기
     2. 키보드의 Return 키를 눌렀을 때 키보드를 내리기
     3. 버튼을 클릭했을 때 키보드를 내리기
     */
    @IBAction func hideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
}
