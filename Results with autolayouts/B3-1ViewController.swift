//
//  B3-1ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B3_1ViewController: UIViewController,UITextFieldDelegate {
    
    var class31:BtechViewController!

    @IBOutlet weak var fm31TF: UITextField!
   
    @IBOutlet weak var tranprt31TF: UITextField!
    @IBOutlet weak var areoSpace31: UITextField!
  
    @IBOutlet weak var phy31TF: UITextField!
    @IBOutlet weak var stuct31TF: UITextField!

    @IBOutlet weak var aeromics31Tf: UITextField!
   
    
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    @IBAction func DismisBtn(_ sender: Any) {
        
        dismiss(animated: true){
            
        }
        
    }
    
    @IBAction func b31BackBtn(_ sender: Any) {
        
        if((fm31TF.text?.isEmpty)! || (tranprt31TF.text?.isEmpty)! || (areoSpace31.text?.isEmpty)! || (phy31TF.text?.isEmpty)! || (stuct31TF.text?.isEmpty)!||(aeromics31Tf.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            self.class31.sem31.append(self.fm31TF .text!)
            self.class31.sem31.append(self.tranprt31TF.text!)
            self.class31.sem31.append(self.areoSpace31.text!)
            self.class31.sem31.append(self.phy31TF.text!)
            self.class31.sem31.append(self.stuct31TF.text!)
            self.class31.sem31.append(self.aeromics31Tf.text!)
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
         }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fm31TF.delegate = self
        tranprt31TF.delegate = self
        areoSpace31.delegate = self
        phy31TF.delegate = self
        stuct31TF.delegate = self
        aeromics31Tf.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==fm31TF){
            
            return true
        }
        
        if (textField==tranprt31TF){
            if ((Int(fm31TF.text!)!<100)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==areoSpace31){
            
            if ((Int(fm31TF.text!)!<100) &&
                (Int(tranprt31TF.text!)!<100)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==phy31TF){
            
            if ((Int(fm31TF.text!)!<100) &&
                (Int(tranprt31TF.text!)!<100) &&
                (Int(areoSpace31.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==stuct31TF){
            
            if ((Int(fm31TF.text!)!<100) &&
                (Int(tranprt31TF.text!)!<100) &&
                (Int(areoSpace31.text!)!<75) &&
                (Int(phy31TF.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==aeromics31Tf){
            
            if ((Int(fm31TF.text!)!<100) &&
                (Int(tranprt31TF.text!)!<100) &&
                (Int(areoSpace31.text!)!<75) &&
                (Int(phy31TF.text!)!<75) &&
                (Int(stuct31TF.text!)! < 60))
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
        
        
        if (textField==fm31TF || textField==tranprt31TF || textField==areoSpace31 || textField==phy31TF || textField==stuct31TF || textField==aeromics31Tf)
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
