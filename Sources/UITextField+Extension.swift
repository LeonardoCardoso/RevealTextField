//
//  UITextField+Extension.swift
//  RevealTextField
//
//  Created by Leonardo Cardoso on 18.10.17.
//  Copyright © 2017 leocardz.com. All rights reserved.
//

import UIKit

private var rtf_secureImage: UIImage?
private var rtf_unsecureImage: UIImage?

extension UITextField {

    // MARK: - Functions
    // Password reveal
    public func revealable(secureImage: UIImage?,
                           unsecureImage: UIImage?,
                           tintColor: UIColor = .black,
                           dimension: CGFloat = 30) {

        rtf_secureImage = secureImage?.withRenderingMode(.alwaysTemplate)
        rtf_unsecureImage = unsecureImage?.withRenderingMode(.alwaysTemplate)

        let safeDimension = dimension > frame.size.height ? frame.size.height : dimension
        let newFrame = CGRect(x: 0, y: 0, width: safeDimension, height: safeDimension)

        let revealButton = UIButton(frame: newFrame)
        revealButton.backgroundColor = .clear
        revealButton.addTarget(self, action: #selector(toggleReveal), for: .touchUpInside)
        revealButton.tintColor = tintColor

        rightView = revealButton
        rightViewMode = .always
        toggleImage(isSecureTextEntry)

    }
    
    @objc public func toggleReveal() {
        isSecureTextEntry = !isSecureTextEntry
        toggleImage(isSecureTextEntry)
    }

    public func toggleImage(_ isSecure: Bool) {
        (rightView as? UIButton)?.setImage(isSecure ? rtf_secureImage : rtf_unsecureImage, for: .normal)
    }

}
