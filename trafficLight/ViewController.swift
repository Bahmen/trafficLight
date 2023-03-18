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
    
    private let cornerRadius: CGFloat = 50
    private let alpha: CGFloat = 0.3
    private var currentLight = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLightArea.alpha = alpha
        redLightArea.layer.cornerRadius = cornerRadius
        
        yellowLightArea.alpha = alpha
        yellowLightArea.layer.cornerRadius = cornerRadius
        
        greenLightArea.alpha = alpha
        greenLightArea.layer.cornerRadius = cornerRadius
    }

    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        if currentLight == 1 {
            redLightArea.alpha = 1
            yellowLightArea.alpha = 0.3
            greenLightArea.alpha = 0.3
        }
        if currentLight == 2 {
            redLightArea.alpha = 0.3
            yellowLightArea.alpha = 1
            greenLightArea.alpha = 0.3
        }
        if currentLight == 3 {
            redLightArea.alpha = 0.3
            yellowLightArea.alpha = 0.3
            greenLightArea.alpha = 1
        }
        currentLight += 1
        if currentLight == 4 {
            currentLight = 1
        }
        
    }
}

