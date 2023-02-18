//
//  Login.swift
//  CleanCodeiOSGB
//
//  Created by Алексей Артамонов on 12.02.2023.
//

import Foundation

final class Login {
    func login(login: String, password: String) -> Bool {
        if login.lowercased() == login.lowercased() && password.lowercased() == password.lowercased() {
            Session.session.userDataLogin = [login: password]
            Session.session.id = Int.random(in: 1..<1000)
            
            print(Session.session.userDataLogin)
            print(Session.session.id)
            
            return true
        } else {
            return false
        }
    }
}
