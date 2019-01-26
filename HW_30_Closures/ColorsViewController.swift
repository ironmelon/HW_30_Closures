//
//  ColorsViewController.swift
//  HW_30_Closures
//
//  Created by Oleg Dynnikov on 1/26/19.
//  Copyright © 2019 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {

    var changeColorActions: ((UIColor) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorActions = { [weak self] color in
            self?.view.backgroundColor = color
        }
    }

    // MARK: - Actions
    @IBAction func colorButtonPressed(_ sender: UIButton) {
        changeColorActions?(sender.backgroundColor!)
    }
}
