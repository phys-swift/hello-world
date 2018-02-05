//
//  ViewController.swift
//  Hello World
//
//  Created by Andrei Frolov on 2018-02-05.
//  Copyright © 2018 SFU Physics Department. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad(); valueChanged(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func valueChanged(_ sender: Any) {
        guard let slider = slider else { return }
        label?.text = String(format: "%0.2f", slider.value)
    }
}
