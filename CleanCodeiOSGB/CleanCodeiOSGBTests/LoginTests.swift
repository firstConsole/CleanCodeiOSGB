//
//  LoginTests.swift
//  CleanCodeiOSGBTests
//
//  Created by Алексей Артамонов on 18.02.2023.
//

import XCTest
@testable import CleanCodeiOSGB

final class LoginTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_login() {
        // Given
        let login: String = "myLogin"
        let password: String = "myStrongPassword"
        
        let auth = Login()
        
        // When
        let result = auth.login(login: login, password: password)
        
        // Then
        XCTAssertEqual(result, true)
    }
}
