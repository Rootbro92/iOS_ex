//
//  ViewController.swift
//  SubmitValue
//
//  Created by 박근형 on 2020/02/29.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 이메일 주소를 입력받는 텍스트 필드
    @IBOutlet weak var email: UITextField!
    
    // 자동 갱신 여부를 설정하는 스위치
    @IBOutlet weak var isUpdate: UISwitch!
    
    // 갱신 주기를 설정하는 스테퍼
    @IBOutlet weak var interval: UIStepper!
    
    // 자동갱신 여부를 표시하는 레이블
    @IBOutlet weak var isUpdateText: UILabel!
    
    // 갱신주기를 텍스트로 표시하는 레이블
    @IBOutlet weak var intervalText: UILabel!
    
    // 자동 갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        // VC2의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.email.text! // 이메일
        rvc.paramUpdate = self.isUpdate.isOn // 자동갱신 여부
        rvc.paramInterval = self.interval.value // 갱신주기
        
        // 화면 이동
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    // 갱신주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {
            return
        }
        
        //값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
    
    @IBAction func ActionSegue(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

