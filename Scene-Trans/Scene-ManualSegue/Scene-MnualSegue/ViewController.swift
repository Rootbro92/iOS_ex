//
//  ViewController.swift
//  Scene-MnualSegue
//
//  Created by 박근형 on 2020/02/28.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        // 세그웨이를 실행한다
        self.performSegue(withIdentifier: "MenualWind", sender: self)
    }
}

