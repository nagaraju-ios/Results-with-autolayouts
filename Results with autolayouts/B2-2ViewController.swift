//
//  B2-2ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B2_2ViewController: UIViewController,UITextFieldDelegate {
    
    var class22:BtechViewController!
   
    
    @IBOutlet weak var fluids21Tf: UITextField!
    @IBOutlet weak var struct21TF: UITextField!
    @IBOutlet weak var maths21: UITextField!
    @IBOutlet weak var fm21: UITextField!
    @IBOutlet weak var areo22: UITextField!
  
    @IBOutlet weak var av22TF: UITextField!
    
    
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    @IBAction func DismisBtn(_ sender: Any) {
        
        dismiss(animated: true){
        }
        
    }
    
    @IBAction func next22Btn(_ sender: Any) {
        
        if((fm21.text?.isEmpty)! || (fluids21Tf.text?.isEmpty)! || (struct21TF.text?.isEmpty)! || (maths21.text?.isEmpty)! || (areo22.text?.isEmpty)!||(av22TF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            
            self.class22.sem22.append(self.fm21.text!)
            self.class22.sem22.append(self.fluids21Tf.text!)
            self.class22.sem22.append(self.struct21TF.text!)
            self.class22.sem22.append(self.maths21.text!)
            self.class22.sem22.append(self.areo22.text!)
            self.class22.sem22.append(self.av22TF.text!)
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        }
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            fm21.delegate = self
            fluids21Tf.delegate = self
            struct21TF.delegate = self
            maths21.delegate = self
            areo22.delegate = self
            av22TF.delegate = self
            // Do any additional setup after loading the view.
        }
        
            
            
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
        {
            if (textField==fm21){
                
                return true
            }
            
            if (textField==fluids21Tf){
                if ((Int(fm21.text!)!<75)){
                    
                    return true
                    
                }   else
                {
                    alertMsg()
                    return false
                }
                
            }
            else if (textField==struct21TF){
                
                if ((Int(fm21.text!)!<75) &&
                    (Int(fluids21Tf.text!)!<75)){
                    
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
            }
            else if (textField==maths21){
                
                if ((Int(fm21.text!)!<100) &&
                    (Int(fluids21Tf.text!)!<75) &&
                    (Int(struct21TF.text!)!<75))
                {
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
                
            }
                
                
            else if (textField==areo22){
                
                if ((Int(fm21.text!)!<75) &&
                    (Int(fluids21Tf.text!)!<75) &&
                    (Int(struct21TF.text!)!<75) &&
                    (Int(maths21.text!)!<75) )
                {
                    
                    return true
                    
                }else
                {
                    alertMsg()
                    return false
                }
                
            }
            else if (textField==av22TF){
                
                if ((Int(fm21.text!)!<75) &&
                    (Int(fluids21Tf.text!)!<75) &&
                    (Int(struct21TF.text!)!<75) &&
                    (Int(maths21.text!)!<75) &&
                    (Int(areo22.text!)! < 75))
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
            
            
            if (textField==fm21 || textField==fluids21Tf || textField==struct21TF || textField==maths21 || textField==areo22 || textField==av22TF)
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
