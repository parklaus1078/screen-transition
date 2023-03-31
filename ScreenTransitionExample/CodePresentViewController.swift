//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Geun Woo Park on 2023/03/31.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
