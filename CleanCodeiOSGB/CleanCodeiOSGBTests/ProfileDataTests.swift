//
//  ProfileDataTests.swift
//  CleanCodeiOSGBTests
//
//  Created by Алексей Артамонов on 18.02.2023.
//

import XCTest
@testable import CleanCodeiOSGB

final class ProfileDataTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_getUserSettings() {
        // Given
        let user: User = .init(id: 101,
                               login: "MyLogin",
                               name: "MyName",
                               lastname: "MyLastName")
        
        let profile = Profile()
        
        // When
        let result = profile.getUserSettings(user: user)
        
        // Then
        XCTAssertEqual(result, true)
    }

}
