//
//  ViewController.swift
//  Color Sliders
//
//  Created by Khoa Vo on 9/3/15.
//  Copyright (c) 2015 AppSynth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColor()
        
    }

    @IBAction func changeColor() {
        
        // Make sure the program doesn't crash if outlets aren't connected
        if redSlider == nil || greenSlider == nil || blueSlider == nil || colorView == nil {
            return
        }
        
        // Define CGFloat values from slider values to use as UIColor parameters
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        self.colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        // Change RGB value label text
        self.redValue.text = "\(Int(Float(r) * 255))"
        self.greenValue.text = "\(Int(Float(g) * 255))"
        self.blueValue.text = "\(Int(Float(b) * 255))"
    }

}
