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
        
        origin = names[0][pickerView.selectedRowInComponent(0)]
        destination = names[1][pickerView.selectedRowInComponent(1)]
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var outputLabel: UILabel!
    
    var origin = ""
    var destination = ""
    
    let names = [["New York", "Mascow", "Houston", "Chicago", "Bangalore", "Los Angeles"],["New York", "Detroit", "Houston", "Chicago", "San Francisco", "Los Angeles"]]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return names.count
    }
    
    func updateUI(){
        outputLabel.text = "Flight from \(origin) to \(destination)"
    }
    
    
    func pickerView(_pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return names[component].count
    }
    
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names [component][row]
    
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if(component==0)
        {
            origin = names[component][row]
        } else {
            
         destination = names[component][row]
        }
     //  outputLabel.text = names [component][row]
        updateUI()
        
    }
}

