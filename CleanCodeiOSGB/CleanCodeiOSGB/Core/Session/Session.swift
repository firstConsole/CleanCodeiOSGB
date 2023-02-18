//
//  Session.swift
//  CleanCodeiOSGB
//
//  Created by Алексей Артамонов on 18.02.2023.
//

import Foundation

final class Session {
    static let session = Session()
    
    private init() {}
    
    var urlSession: URLSession {
        let defaultConfiguration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: defaultConfiguration)
        return urlSession
    }
    
    var userDataLogin: [String: String] = [:]
    var id: Int?
}
