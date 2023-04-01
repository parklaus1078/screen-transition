//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by Geun Woo Park on 2023/03/31.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate2 {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController view is loaded.");
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController view will load")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController view appeared")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController view disappeared")
    }

    @IBAction func tabCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "Kay Park"
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Kay Park"
        viewController.delegate = self
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
    // prepare method sends a data to another view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SaguePushViewController {
            viewController.name = "Hilarious Charlie Puth"
        }
    }
}

