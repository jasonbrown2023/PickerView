//
//  ViewController.swift
//  PickerView
//
//  Created by jason brown on 18/06/1402 AP.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet var picker: UIPickerView!
    
    let data = ["Apple", "Orange", "Banana", "Grapes", "Strawberries", "Watermelon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker.dataSource = self
        picker.delegate = self
    }
}
    
extension ViewController: UIPickerViewDataSource {
        
        
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
        
        
}
    
extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
        
}




