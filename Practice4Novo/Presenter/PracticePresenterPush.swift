//
//  PracticePresenterPush.swift
//  Practice4Novo
//
//  Created by Juan Manuel Moreno on 21/11/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation
import Firebase

class PracticePresenterPush: PracticePresenter {

    var description: String = ""
    
    override func prepareMessaging() {
        if #available(iOS 10.0, *) {
          // For iOS 10 display notification (sent via APNS)
            UNUserNotificationCenter.current().delegate = self.delegate as! UNUserNotificationCenterDelegate

          let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
          UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: {_, _ in })
        } else {
          let settings: UIUserNotificationSettings =
          UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
//          application.registerUserNotificationSettings(settings)
        }

//        Messaging.messaging().delegate = UIApplication.shared as! MessagingDelegate
        UIApplication.shared.registerForRemoteNotifications()
    }
}
