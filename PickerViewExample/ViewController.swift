//
//  ViewController.swift
//  PickerViewExample
//
//  Created by Pravin Kandala on 10/2/15.
//  Copyright (c) 2015 Pravin Kandala. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.MediumStyle
        
        updateUI()
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(){
           outputLabel.text = dateFormatter.stringFromDate(datePicker.date)
    }
    
    @IBOutlet weak var datePicker: UIDatePicker!

    @IBOutlet weak var outputLabel: UILabel!
 
    var dateFormatter = NSDateFormatter()
    
    
    
    @IBAction func dateChanged(sender:UIDatePicker){
        updateUI()
    }
}