//
//  Profile.swift
//  CleanCodeiOSGB
//
//  Created by Алексей Артамонов on 12.02.2023.
//

import Foundation

protocol ProfileProtocol {
    func getUserSettings(user: User) -> Bool
}

final class Profile: ProfileProtocol {
    func getUserSettings(user: User) -> Bool {
        for (_, value) in Session.session.userDataLogin {
            if user.login == value || Session.session.userDataLogin.isEmpty {
                return true
            } else {
                return false
            }
        }
        return true
    }
}
