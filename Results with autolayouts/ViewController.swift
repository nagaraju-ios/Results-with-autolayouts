//
//  ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/11/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit
//import Toast_Swift

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    
    @IBOutlet weak var frstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var qulifyTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    var ac:UIAlertController!
    var allowableCharacters = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvw ")
    var allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
    var allowChctrsNdNumrs = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890@. ")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        frstNameTF.delegate = self
        lastNameTF.delegate = self
        mobileTF.delegate = self
        ageTF.delegate = self
        qulifyTF.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    
        @IBAction func submitBtn(_ sender: Any) {
        
         FormData.shared.name1.append(self.frstNameTF.text!)
         FormData.shared.name1.append(self.lastNameTF.text!)
         FormData.shared.name1.append(self.mobileTF.text!)
         FormData.shared.name1.append(self.qulifyTF.text!)
         FormData.shared.name1.append(self.ageTF.text!)
         
        if((frstNameTF.text  != "") && (lastNameTF.text != "") && (mobileTF.text != "") && (ageTF.text  != "") && (qulifyTF.text != "")  )
    
            {
               
            if (Int(ageTF.text!)!<120){
           let secondView = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")as!       SecondViewController
            present(secondView, animated: true){
            }
            }else{
          
            }
        
            }else{
            
            alertMsg()
        }
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==frstNameTF){
            return true
        }
        if (textField==lastNameTF){
            if (frstNameTF.text!.count>1){
                return true
            }   else
            {
              alertMsg()
                return false
            }
        }
        else if (textField==mobileTF){
            if (frstNameTF.text!.count>1 &&
                lastNameTF.text!.count>1){
                return true
            }else
            {
             alertMsg()
                return false
            }
        }
        else if (textField==qulifyTF){
            if (frstNameTF.text!.count>1 &&
                lastNameTF.text!.count>1 &&
                mobileTF.text!.count==10)
            {
                return true
                
            }else
            {
              alertMsg()
                return false
            }
        }
        else if (textField==ageTF){
             if  (frstNameTF.text!.count>1 &&
                 lastNameTF.text!.count>1 &&
                  mobileTF.text!.count==10 &&
                  qulifyTF.text!.count>1)
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
    //  TextFeild  Regular expresson Vaildations
    
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
        if (textField==frstNameTF || textField==lastNameTF || textField==qulifyTF)
        {
            
            if ((string.rangeOfCharacter(from:allowableCharacters)) != nil)||(string=="")
            {
            return true
            }
            else {
                alertMsg()
                return false
            }
            }
        
        if (textField==mobileTF || textField==ageTF)
        {
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
       
        ac = UIAlertController(title: "Warning", message: "Invalid, Enter Valid Data", preferredStyle: UIAlertController.Style.alert)
        present(ac,animated:true,completion: nil)
        
        let yesAC = UIAlertAction(title: "Ok", style:UIAlertAction.Style.default) { (YesAC) in
            print("OK is Press")
        }
        ac.addAction(yesAC)
    }

}
