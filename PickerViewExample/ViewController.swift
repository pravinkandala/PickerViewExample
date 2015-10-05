//
//  ViewController.swift
//  PickerViewExample
//
//  Created by Pravin Kandala on 10/2/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var outputLabel: UILabel!
    
    let names = ["New York", "Mascow", "Houston", "Chicago", "Bangalore", "Los Angeles"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return names.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names[row]
    
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        outputLabel.text = names[row]
        
    }
}

