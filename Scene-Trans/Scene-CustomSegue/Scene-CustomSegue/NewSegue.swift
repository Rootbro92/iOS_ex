//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 박근형 on 2020/02/28.
//  Copyright © 2020 pgh. All rights reserved.
//

import Foundation
import UIKit

class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        // 세그웨이의 출발지 뷰 컨트롤러
        let srcUVC = self.source
        
        // 세그웨이의 목적지 뷰 컨트롤러
        let destUVC = self.destination
        
        // fromView에서 toView로 뷰를 전환한다
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
