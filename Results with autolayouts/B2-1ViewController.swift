//
//  B2-1ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B2_1ViewController: UIViewController,UITextFieldDelegate {
    
    var class21:BtechViewController!
    
    @IBOutlet weak var b21MathsTF: UITextField!
    
    @IBOutlet weak var b21FluidsTF: UITextField!
    
    @IBOutlet weak var b21AirPerTf: UITextField!
    
    @IBOutlet weak var b21CtTF: UITextField!
    
    @IBOutlet weak var b21EvoTF: UITextField!
    
    @IBOutlet weak var b21EleTF: UITextField!
    
    
   
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    @IBAction func DissmisBtn(_ sender: Any) {
        
        dismiss(animated: true){
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        b21MathsTF.delegate = self
        b21FluidsTF.delegate = self
        b21AirPerTf.delegate = self
        b21CtTF.delegate = self
        b21EvoTF.delegate = self
        b21EleTF.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        
        if((b21MathsTF.text?.isEmpty)! || (b21FluidsTF.text?.isEmpty)! || (b21AirPerTf.text?.isEmpty)! || (b21CtTF.text?.isEmpty)! || (b21EvoTF.text?.isEmpty)!||(b21EleTF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            
            self.class21.sem21.append(self.b21MathsTF.text!)
            self.class21.sem21.append(self.b21FluidsTF.text!)
            self.class21.sem21.append(self.b21AirPerTf.text!)
            self.class21.sem21.append(self.b21CtTF.text!)
            self.class21.sem21.append(self.b21EvoTF.text!)
            self.class21.sem21.append(self.b21EleTF.text!)
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        }
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
        {
            if (textField==b21MathsTF){
                
                return true
            }
            
            if (textField==b21FluidsTF){
                if ((Int(b21MathsTF.text!)!<75)){
                    
                    return true
                    
                }   else
                {
                    alertMsg()
                    return false
                }
                
            }
            else if (textField==b21AirPerTf){
                
                if ((Int(b21MathsTF.text!)!<75) &&
                    (Int(b21FluidsTF.text!)!<75)){
                    
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
            }
            else if (textField==b21CtTF){
                
                if ((Int(b21MathsTF.text!)!<75) &&
                    (Int(b21FluidsTF.text!)!<75) &&
                    (Int(b21AirPerTf.text!)!<75))
                {
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
                
            }
                
                
            else if (textField==b21EvoTF){
                
                if ((Int(b21MathsTF.text!)!<75) &&
                    (Int(b21FluidsTF.text!)!<75) &&
                    (Int(b21AirPerTf.text!)!<75) &&
                    (Int(b21CtTF.text!)!<75) )
                {
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
                
            }
            else if (textField==b21EleTF){
                
                if ((Int(b21MathsTF.text!)!<75) &&
                    (Int(b21FluidsTF.text!)!<75) &&
                    (Int(b21AirPerTf.text!)!<75) &&
                    (Int(b21CtTF.text!)!<75) &&
                    (Int(b21EvoTF.text!)! < 75))
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
            
            
            if (textField==b21MathsTF || textField==b21FluidsTF || textField==b21AirPerTf || textField==b21AirPerTf || textField==b21CtTF || textField==b21EleTF)
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
