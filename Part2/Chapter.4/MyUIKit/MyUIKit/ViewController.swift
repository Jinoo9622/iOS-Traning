//
//  ViewController.swift
//  MyUIKit
//
//  Created by 박진우 on 1/21/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    @IBAction func didMyButtonTapped(_ sender: Any) {
        myLabel.text = "Hello UIKit!"
    }
}

