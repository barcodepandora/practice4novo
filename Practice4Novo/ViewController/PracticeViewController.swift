//
//  PracticeViewController.swift
//  Practice4Novo
//
//  Created by Juan Manuel Moreno on 21/11/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import UIKit

class PracticeViewController: UIViewController, PresenterDelegate, UNUserNotificationCenterDelegate {

    // MARK: - Character
    
    var presenter: PracticePresenter?

    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.presenter = PracticePresenterPush()
        presenter!.delegate = self
        presenter!.prepareMessaging()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Delegate
    
    func refresh() {}
}