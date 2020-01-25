//
//  B4-1ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B4_1ViewController: UIViewController,UITextFieldDelegate {
    
    var class41:BtechViewController!
    
    @IBOutlet weak var csd41TF: UITextField!
    @IBOutlet weak var csp41TF: UITextField!
    @IBOutlet weak var afo41TF: UITextField!
    @IBOutlet weak var flight41TF: UITextField!
    @IBOutlet weak var exp41TF: UITextField!
    @IBOutlet weak var mvsd41TF: UITextField!
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    @IBAction func b41BackBtn(_ sender: UIButton) {
        
        if((csd41TF.text?.isEmpty)! || (csp41TF.text?.isEmpty)! || (afo41TF.text?.isEmpty)! || (flight41TF.text?.isEmpty)! || (exp41TF.text?.isEmpty)!||(mvsd41TF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            self.class41.sem41.append(self.csd41TF.text!)
            self.class41.sem41.append(self.csp41TF.text!)
            self.class41.sem41.append(self.afo41TF.text!)
            self.class41.sem41.append(self.flight41TF.text!)
            self.class41.sem41.append(self.exp41TF.text!)
            self.class41.sem41.append(self.mvsd41TF.text!)
            
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        }
        
       
    }
    
    
    @IBAction func dismissBtn(_ sender: Any) {
        dismiss(animated: true){
            
            
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        csd41TF.delegate = self
        csp41TF.delegate = self
        afo41TF.delegate = self
        flight41TF.delegate = self
        exp41TF.delegate = self
        mvsd41TF.delegate = self
      
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==csd41TF){
            
            return true
        }
        
        if (textField==csp41TF){
            if ((Int(csd41TF.text!)!<75)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==afo41TF){
            
            if ((Int(csd41TF.text!)!<75) &&
                (Int(csp41TF.text!)!<75)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==flight41TF){
            
            if ((Int(csd41TF.text!)!<75) &&
                (Int(csp41TF.text!)!<75) &&
                (Int(afo41TF.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==exp41TF){
            
            if ((Int(csd41TF.text!)!<75) &&
                (Int(csp41TF.text!)!<75) &&
                (Int(afo41TF.text!)!<75) &&
                (Int(flight41TF.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==mvsd41TF){
            
            if ((Int(csd41TF.text!)!<75) &&
                (Int(csp41TF.text!)!<75) &&
                (Int(afo41TF.text!)!<75) &&
                (Int(flight41TF.text!)!<75) &&
                (Int(exp41TF.text!)! < 75))
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
        
        
        if (textField==csd41TF || textField==csp41TF || textField==afo41TF || textField==flight41TF || textField==exp41TF || textField==mvsd41TF)
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
