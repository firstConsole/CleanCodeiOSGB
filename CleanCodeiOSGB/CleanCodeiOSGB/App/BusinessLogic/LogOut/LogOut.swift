//
//  LogOut.swift
//  CleanCodeiOSGB
//
//  Created by Алексей Артамонов on 12.02.2023.
//

import Foundation

protocol LogOutProtocol {
    func cleanUserData()
    func cleanCache()
}

final class LogOut: LogOutProtocol {
    func cleanUserData() {
        Session.session.id = 0
        Session.session.userDataLogin = [:]
    }
    
    func cleanCache() {
        
    }
}
