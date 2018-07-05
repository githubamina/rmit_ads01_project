//
//  ViewController.swift
//  TrafficLights
//
//  Created by Amina Qureshi on 26/1/18.
//  Copyright © 2018 Amina Qureshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    
    var lightColor = "none"
    
    @IBAction func buttonPressed(_ sender: Any) {
        switch lightColor{
        case "none":
            lightColor = "green"
        case "green":
            lightColor = "amber"
        case "amber":
            lightColor = "red"
        default:
            lightColor = "none"
        }
        updateUI()
    }
    @IBOutlet var mainView: UIView!
    
    func updateUI(){
        switch lightColor{
        case "green":
            view.backgroundColor = .green
            lightButton.setTitle("Green means go", for: .normal)
        case "amber":
            view.backgroundColor = .yellow
            lightButton.setTitle("Amber means stop unless braking would be dangerous", for: .normal)
        case "red":
            view.backgroundColor = .red
            lightButton.setTitle("Red means STOP!", for: .normal)
        default:
            view.backgroundColor = .white
            lightButton.setTitle("Tap to find out", for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

