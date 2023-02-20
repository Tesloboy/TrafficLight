//
//  ViewController.swift
//  TrafficLight
//
//  Created by Viktor Teslenko on 13.02.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var toggleButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Скруглим кнопку
        toggleButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        
        //сделаем светофор круглым
//        redLight.layer.cornerRadius = redLight.frame.size.width/2
//        redLight.clipsToBounds = true
//        
//        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
//        yellowLight.clipsToBounds = true
//        
//        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
//        greenLight.clipsToBounds = true
        
    }
    
    @IBAction func makeButtonAction() {
       
        toggleButton.setTitle("NEXT", for: .normal)

        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
}

