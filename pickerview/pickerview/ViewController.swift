//
//  ViewController.swift
//  pickerview
//
//  Created by Niharika Srivastav on 02/08/16.
//  Copyright © 2016 Niharika Srivastav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var pickerBizCat: UIPickerView!
    @IBOutlet weak var textfieldBizCat: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   // @IBOutlet var textfieldBizCat: UITextField!
    //@IBOutlet var pickerBizCat: UIPickerView! = UIPickerView()
    
    var bizCat = ["Cat One", "Cat Two", "Cat Three"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerBizCat.dataSource = self
        pickerBizCat.delegate = self
        pickerBizCat.hidden = true
        textfieldBizCat.delegate = self
        textfieldBizCat.addTarget(self, action: #selector(ViewController.pickerActive), forControlEvents: UIControlEvents.TouchDown)
        //textfieldBizCat.text = bizCat[0]
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return bizCat.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bizCat[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        textfieldBizCat.text = bizCat[row]
        print (textfieldBizCat.text!)
        //pickerBizCat.hidden = true;
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        pickerBizCat.hidden = false
        return false
    }
    func pickerActive() {
        pickerBizCat.hidden = false
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return false
    }


}

