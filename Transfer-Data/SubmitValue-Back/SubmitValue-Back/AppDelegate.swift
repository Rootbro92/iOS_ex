//
//  AppDelegate.swift
//  SubmitValue-Back
//
//  Created by 박근형 on 2020/02/29.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    /* 값을 저장할 변수를 정의 */
    var paramEmail : String? // 이메일 값을 전달받을 변수
    var paramUpdate : Bool? // 자동 갱신 여부를 전달받을 변수
    var paramInterval : Double? // 갱신주기 값을 전달받을 변수
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


}

