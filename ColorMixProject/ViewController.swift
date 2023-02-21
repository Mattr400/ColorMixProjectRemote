//
//  ViewController.swift
//  ColorMixProject
//
//  Created by Matthew Regalado on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateColor()
        updateControls()
    }
    
    // Updates the color when switch/slider is toggled
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    
    
    
    
    // ActionButton connects to 'Reset' button
    @IBAction func reset(_ sender: UIButton) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateColor()
        updateControls()
        
    }
    
    
    //Function runs when switch is turned on
    @IBAction func switchChanged(_ sender: UISwitch) {
//        colorView.backgroundColor = .red
        if sender.isOn {
            updateColor()
            updateControls()
        } else {
            updateColor()
            updateControls()
        }
    }
    
    //Fucntion runs when slider is toggled
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    
    
}

