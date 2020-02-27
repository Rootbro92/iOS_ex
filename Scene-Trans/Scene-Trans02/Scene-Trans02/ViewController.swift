//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 박근형 on 2020/02/27.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func movdByNavi(_ sender: Any) {
        // 두번째 뷰 컨트롤러 인스턴스를 가져온다.
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        // 화면을 전환한다.
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        // 두 번째 뷰 컨트롤러 인스턴스를 가져온다.
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        // 화면을 전환한다.
        self.present(uvc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

