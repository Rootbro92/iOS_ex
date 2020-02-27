//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 박근형 on 2020/02/27.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
