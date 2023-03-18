//
//  ViewController.swift
//  trafficLight
//
//  Created by Bax Bax on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightArea: UIView!
    
    @IBOutlet weak var yellowLightArea: UIView!
    
    @IBOutlet weak var greenLightArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLightArea.alpha = 0.3
        redLightArea.layer.cornerRadius = 50
        
        yellowLightArea.alpha = 0.3
        yellowLightArea.layer.cornerRadius = 50
        
        greenLightArea.alpha = 0.3
        greenLightArea.layer.cornerRadius = 50
    }

    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        redLightArea.alpha = 1
        sender.setTitle("NEXT", for: .normal)
    }
}

