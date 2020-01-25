//
//  Inter2ndYrViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/16/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class Inter2ndYrViewController: UIViewController,UITextFieldDelegate {
    
    
 //  var inter2ndr:SecondViewController!
    
    
    @IBOutlet weak var interSan2: UITextField!
    @IBOutlet weak var interEng2: UITextField!
    @IBOutlet weak var interMaths2A: UITextField!
    @IBOutlet weak var interMaths2B: UITextField!
    @IBOutlet weak var interPhy2: UITextField!
    @IBOutlet weak var interChe2: UITextField!
    
  //  var inter2nd = [String]()
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    
    @IBAction func DismissBtn(_ sender: Any) {
        dismiss(animated: true){
            
        }
    }
    
    @IBAction func inter2NextBtn(_ sender: Any) {
        
        
        if((interSan2.text?.isEmpty)! || (interEng2.text?.isEmpty)! || (interMaths2A.text?.isEmpty)! || (interMaths2B.text?.isEmpty)! || (interPhy2.text?.isEmpty)! || (interChe2.text?.isEmpty)!)
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else{
             FormData.shared .interResults2.append(self.interSan2 .text!)
             FormData.shared .interResults2.append(self.interEng2 .text!)
             FormData.shared .interResults2.append(self.interMaths2A .text!)
             FormData.shared .interResults2.append(self.interMaths2B .text!)
             FormData.shared .interResults2.append(self.interPhy2 .text!)
             FormData.shared .interResults2.append(self.interChe2 .text!)

            
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interSan2.delegate = self
        interEng2.delegate = self
        interMaths2A.delegate = self
        interMaths2B.delegate = self
        interPhy2.delegate = self
        interChe2.delegate = self

        // Do any additional setup after loading the view.
    }
    //textFieldShouldBeginEditing validations
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==interSan2){
            
            return true
        }
        
        if (textField==interEng2){
            if ((Int(interSan2.text!)!<100)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==interMaths2A){
            
            if ((Int(interSan2.text!)!<100) &&
                (Int(interEng2.text!)!<100)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==interMaths2B){
            
            if ((Int(interSan2.text!)!<100) &&
                (Int(interEng2.text!)!<100) &&
                (Int(interMaths2A.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==interPhy2){
            
            if ((Int(interSan2.text!)!<100) &&
                (Int(interEng2.text!)!<100) &&
                (Int(interMaths2A.text!)!<75) &&
                (Int(interMaths2B.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==interChe2){
            
            if ((Int(interSan2.text!)!<100) &&
                (Int(interEng2.text!)!<100) &&
                (Int(interMaths2A.text!)!<75) &&
                (Int(interMaths2B.text!)!<75) &&
                (Int(interPhy2.text!)! < 60))
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
        
        
      if (textField==interSan2 || textField==interEng2 || textField==interMaths2A || textField==interMaths2B || textField==interPhy2 || textField==interChe2)
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
