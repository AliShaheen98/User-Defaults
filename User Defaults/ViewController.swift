//
//  ViewController.swift
//  User Defaults
//
//  Created by Ali  on 17/11/2020.
//

import UIKit

class ViewController: UIViewController {
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true))


        muteSwitch.isOn = defaults.bool(forKey: "muteSwitch")
        print(defaults.bool(forKey: "muteSwitch"))

        soungSlider.value = defaults.float(forKey: "soungSlider")
        print(defaults.float(forKey: "soungSlider")
)
        speakerSegmented.selectedSegmentIndex = defaults.integer(forKey: "speakerSegmented")
        print(defaults.integer(forKey: "speakerSegmented")
)
        
        modeSegmented.selectedSegmentIndex = defaults.integer(forKey: "modeSegmented")
        print(defaults.integer(forKey: "modeSegmented")
)
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var muteSwitch: UISwitch!
    
    @IBOutlet weak var soungSlider: UISlider!
    
    @IBOutlet weak var speakerSegmented: UISegmentedControl!
    
    @IBOutlet weak var modeSegmented: UISegmentedControl!
    
    
    @IBAction func modeChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        }else{
            view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

        }
    }
    
    
    @IBAction func SaveButton(_ sender: UIButton) {

        defaults.set(muteSwitch.isOn,forKey: "muteSwitch")
        defaults.set(soungSlider.value, forKey: "soungSlider")
        defaults.set(speakerSegmented.selectedSegmentIndex, forKey: "speakerSegmented")
        defaults.set(modeSegmented.selectedSegmentIndex, forKey: "modeSegmented")
        
    }
    
     }

