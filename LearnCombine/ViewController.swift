//
//  ViewController.swift
//  LearnCombine
//
//  Created by Rohit Saini on 24/04/20.
//  Copyright © 2020 Accessed Denied. All rights reserved.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var downImage: UIImageView!
    private var imageSubscriber: AnyCancellable?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageSubscriber = "https://wallpaperaccess.com/download/minion-27836"
            .imagePublisher()
            .assign(to: \.image, on: downImage)
        
    }


}




