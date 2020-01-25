//
//  B3-2ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B3_2ViewController: UIViewController,UITextFieldDelegate {
    
  var class32:BtechViewController!
    
    @IBOutlet weak var air32Tf: UITextField!
    
    @IBOutlet weak var ad232TF: UITextField!
    
    @IBOutlet weak var FM32TF: UITextField!
    
    @IBOutlet weak var eee32TF: UITextField!
    
    @IBOutlet weak var fluids32TF: UITextField!
    
    
    @IBOutlet weak var SOLIDS32TF: UITextField!
    
    
    
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    @IBAction func dismisBtn(_ sender: Any) {
        dismiss(animated: true){
            
        }
    }
    
    @IBAction func next32Btn(_ sender: Any) {
        
        
        if((air32Tf.text?.isEmpty)! || (ad232TF.text?.isEmpty)! || (FM32TF.text?.isEmpty)! || (eee32TF.text?.isEmpty)! || (fluids32TF.text?.isEmpty)!||(SOLIDS32TF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
           
            self.class32.sem32.append(self.air32Tf.text!)
            self.class32.sem32.append(self.ad232TF.text!)
            self.class32.sem32.append(self.FM32TF.text!)
            self.class32.sem32.append(self.eee32TF.text!)
            self.class32.sem32.append(self.fluids32TF.text!)
            self.class32.sem32.append(self.SOLIDS32TF.text!)
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
          }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        air32Tf.delegate = self
        ad232TF.delegate = self
        eee32TF.delegate = self
        FM32TF.delegate = self
        fluids32TF.delegate = self
        SOLIDS32TF.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==air32Tf){
            
            return true
        }
        
        if (textField==ad232TF){
            if ((Int(air32Tf.text!)!<100)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==FM32TF){
            
            if ((Int(air32Tf.text!)!<100) &&
                (Int(ad232TF.text!)!<100)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==eee32TF){
            
            if ((Int(air32Tf.text!)!<100) &&
                (Int(ad232TF.text!)!<100) &&
                (Int(FM32TF.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==fluids32TF){
            
            if ((Int(air32Tf.text!)!<100) &&
                (Int(ad232TF.text!)!<100) &&
                (Int(FM32TF.text!)!<75) &&
                (Int(eee32TF.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==SOLIDS32TF){
            
            if ((Int(air32Tf.text!)!<100) &&
                (Int(ad232TF.text!)!<100) &&
                (Int(FM32TF.text!)!<75) &&
                (Int(eee32TF.text!)!<75) &&
                (Int(fluids32TF.text!)! < 60))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        textField.backgroundColor = UIColor.yellow
    }
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        
        
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
    {
        
    }
    
    //  ChangeCharacters TextFeild Vaildations
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
    {
        
        
        if (textField==air32Tf || textField==ad232TF || textField==FM32TF || textField==eee32TF || textField==fluids32TF || textField==SOLIDS32TF)
        {
            let  allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
            if ((string.rangeOfCharacter(from:allowableNumbers)) != nil)||(string=="")
            {
                return true
            }else {
                
                alertMsg()
                return false
            }
        }
        
        return true
    }
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool
    {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        return true
    }
    
    // Creating Alert action func
    
    func alertMsg(){
        
        var  ac = UIAlertController(title: "Warning", message: "Invalid, Enter Valid Data", preferredStyle: UIAlertController.Style.alert)
        present(ac,animated:true,completion: nil)
        
        var   action = UIAlertAction(title: "Ok", style:UIAlertAction.Style.default) { (YesAC) in
            print("OK is Press")
        }
        ac.addAction(action)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
