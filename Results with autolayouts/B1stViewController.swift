//
//  B1stViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B1stViewController: UIViewController,UITextFieldDelegate{
    
    var classes:BtechViewController!
    
    @IBOutlet weak var b1stEngTF: UITextField!
    @IBOutlet weak var b1stEngMechTF: UITextField!
    @IBOutlet weak var b1stmathsTF: UITextField!
    @IBOutlet weak var b1stDrwTF: UITextField!
    @IBOutlet weak var b1stCheTF: UITextField!
    @IBOutlet weak var b1stPhyTF: UITextField!
    @IBOutlet weak var b1stCndsTF: UITextField!
   
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
  
   
    @IBAction func SubmitBtn(_ sender: Any) {
        
        if((b1stEngTF.text?.isEmpty)! || (b1stEngMechTF.text?.isEmpty)! || (b1stmathsTF.text?.isEmpty)! || (b1stDrwTF.text?.isEmpty)! || (b1stCheTF.text?.isEmpty)!||(b1stPhyTF.text?.isEmpty)!||(b1stCndsTF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            
            self.classes.b1styr.append(self.b1stEngTF.text!)
            self.classes.b1styr.append( self.b1stEngMechTF.text!)
            self.classes.b1styr.append( self.b1stmathsTF.text!)
            self.classes.b1styr.append( self.b1stDrwTF.text!)
            self.classes.b1styr.append( self.b1stCheTF.text!)
            self.classes.b1styr.append( self.b1stPhyTF.text!)
            self.classes.b1styr.append( self.b1stCndsTF.text!)
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        }
    
}
    @IBAction func DismissBtn(_ sender: Any) {
    
    dismiss(animated: true){
     }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b1stEngTF.delegate = self
        b1stEngMechTF.delegate = self
        b1stmathsTF.delegate = self
        b1stDrwTF.delegate = self
        b1stCheTF.delegate = self
        b1stPhyTF.delegate = self
        b1stCndsTF.delegate = self
        // Do any additional setup after loading the view.
    }
    //textFieldShouldBeginEditing validations
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==b1stEngTF){
            
            return true
        }
        
        if (textField==b1stEngMechTF){
            if ((Int(b1stEngTF.text!)!<75)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==b1stmathsTF){
            
            if ((Int(b1stEngTF.text!)!<75) &&
                (Int(b1stEngMechTF.text!)!<75)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==b1stDrwTF){
            
            if ((Int(b1stEngTF.text!)!<75) &&
                (Int(b1stEngMechTF.text!)!<75) &&
                (Int(b1stmathsTF.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==b1stCheTF){
            
            if ((Int(b1stEngTF.text!)!<75) &&
                (Int(b1stEngMechTF.text!)!<75) &&
                (Int(b1stmathsTF.text!)!<75) &&
                (Int(b1stDrwTF.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==b1stPhyTF){
            
            if ((Int(b1stEngTF.text!)!<75) &&
                (Int(b1stEngMechTF.text!)!<75) &&
                (Int(b1stmathsTF.text!)!<75) &&
                (Int(b1stDrwTF.text!)!<75) &&
                (Int(b1stCheTF.text!)! < 75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
            else if (textField==b1stCndsTF){
                
                if ((Int(b1stEngTF.text!)!<75) &&
                    (Int(b1stEngMechTF.text!)!<75) &&
                    (Int(b1stmathsTF.text!)!<75) &&
                    (Int(b1stDrwTF.text!)!<75)  &&
                    (Int(b1stCheTF.text!)!<75) &&
                    (Int(b1stPhyTF.text!)!<75))
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
        
        
        if (textField==b1stEngTF || textField==b1stEngMechTF || textField==b1stmathsTF || textField==b1stDrwTF || textField==b1stPhyTF || textField==b1stCheTF || textField==b1stCndsTF)
        {
            var allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
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
