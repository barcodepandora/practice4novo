//
//  BaseViewController.swift
//  Practice4Novo
//
//  Created by Juan Manuel Moreno on 21/11/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let swipe4Left = UISwipeGestureRecognizer(target: self, action: #selector(swipping(swipe:)))
        swipe4Left.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipe4Left)
        let swipe4Right = UISwipeGestureRecognizer(target: self, action: #selector(swipping(swipe:)))
        swipe4Right.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipe4Right)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func toPrevious() {
        self.navigationController?.popViewController(animated: true)
    }

    func toNext() {
    }

}

extension BaseViewController
{
    @objc func swipping(swipe:UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1:
            self.toPrevious()
        case 2:
            self.toNext()
        default:
            break
        }
    }
}
