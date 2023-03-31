//
//  SaguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Geun Woo Park on 2023/03/31.
//

import UIKit

class SaguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
