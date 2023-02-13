//
//  ViewController.swift
//  TrafficLight
//
//  Created by Viktor Teslenko on 13.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var toggleButton: UIButton!
    @IBOutlet var allColors: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Скруглим кнопку
        toggleButton.layer.cornerRadius = 10
        //сделаем светофор круглым
        redLight.layer.cornerRadius = redLight.frame.size.width/2
        redLight.clipsToBounds = true
        
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        yellowLight.clipsToBounds = true
        
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
        greenLight.clipsToBounds = true
        

    }
    
    
    
    @IBAction func makeButtonAction() {
    }
}

