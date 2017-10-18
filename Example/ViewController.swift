//
//  ViewController.swift
//  Example
//
//  Created by Leonardo Cardoso on 18.10.17.
//  Copyright © 2017 leocardz.com. All rights reserved.
//

import UIKit
import RevealTextField

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField?
    @IBOutlet var coloredTextField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        let secureImage = UIImage(named: "eye")
        let unsecureImage = UIImage(named: "cut-eye")

        textField?.revealable(secureImage: secureImage,
                              unsecureImage: unsecureImage)
        
        coloredTextField?.revealable(secureImage: secureImage,
                                     unsecureImage: unsecureImage,
                                     tintColor: .red,
                                     dimension: 20)

    }

}

