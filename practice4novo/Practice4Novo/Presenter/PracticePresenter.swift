//
//  PracticePresenter.swift
//  Practice4Novo
//
//  Created by Juan Manuel Moreno on 21/11/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

protocol PresenterTasker {

    func prepareMessaging()
    
}

protocol PresenterDelegate: class {
    
    func refresh()
}

class PracticePresenter: PresenterTasker {
    
    // MARK: - Character
    
//    var mocky: Mocky?
//    var factorForBakin = 0
    weak var delegate: PresenterDelegate?
    
    // MARK: - Protocol
    
    func prepareMessaging() {}
    
}
