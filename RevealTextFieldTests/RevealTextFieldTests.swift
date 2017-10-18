//
//  RevealTextFieldTests.swift
//  RevealTextFieldTests
//
//  Created by Leonardo Cardoso on 18.10.17.
//  Copyright © 2017 leocardz.com. All rights reserved.
//

import XCTest
@testable import RevealTextField

class RevealTextFieldTests: XCTestCase {

    var textField: UITextField?
    
    override func setUp() {
        super.setUp()
        textField = UITextField(frame: .zero)
        textField?.isSecureTextEntry = true
    }
    
    func testRightView() {
        textField?.revealable(secureImage: nil,
                              unsecureImage: nil,
                              allowLargeImages: true)
        XCTAssert(textField?.rightView != nil)

        textField?.revealable(secureImage: nil,
                              unsecureImage: nil,
                              dimension: 100)
        XCTAssert(textField?.rightView != nil)
    }

    func testSecureEntry() {
        textField?.toggleReveal()
        XCTAssert(textField?.isSecureTextEntry == false)
    }
    
}
