//
//  ViewController.swift
//  MultipleEx
//
//  Created by Felicia Quichocho on 4/12/20.
//  Copyright © 2020 Felicia Quichocho. All rights reserved.
//

import UIKit

//global variables
class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    //main variables for inital VC
    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var theSwitch: UILabel!
    @IBOutlet weak var theSlider: UILabel!
    @IBOutlet weak var thePicker: UILabel!
    @IBOutlet weak var myName: UITextField!
    
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
    
    
    //nav menu
    @IBAction func clickMenu(_ sender: UIBarButtonItem) {
        if(navView.isHidden) {
            navView.isHidden = false
        }
        else {
            navView.isHidden = true
        }
    }
    @IBOutlet weak var navView: UIView!
    override func viewWillDisappear(_ animated: Bool) {
           navView.isHidden = true
       }
    
    //for labels on main VC
    override func viewWillAppear(_ animated: Bool){
    theSwitch.text = "Switch: \(global.switchVar)"
    theSlider.text = "Slider: \(global.sliderVar)"
    thePicker.text = "Picker: \(global.pickerVar)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

