//
//  AppDelegate.swift
//  Msg-Notification
//
//  Created by 박근형 on 2020/02/29.
//  Copyright © 2020 pgh. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if #available(iOS 11.0, *) {
            // 경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 사용자 동의 여부 창을 실행
            let notiCenter = UNUserNotificationCenter.current()
            notiCenter.requestAuthorization(options: [.alert, .badge, .sound]) { (didAllow,e) in }
            
        } else {
            // 경고창, 배지, 사운드를 사용하는 알림 환경 정보를 생성하고, 이를 애플리케이션에 저장
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
             (granted, error) in
             //Parse errors and track state
            }
        }
        return true
    }


}

