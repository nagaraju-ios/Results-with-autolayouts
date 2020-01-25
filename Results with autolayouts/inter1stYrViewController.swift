//
//  inter1stYrViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/16/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class inter1stYrViewController: UIViewController,UITextFieldDelegate {
    
  // var inter1STYr:SecondViewController!
    
    @IBOutlet weak var interSan1: UITextField!
    @IBOutlet weak var interEng1: UITextField!
    @IBOutlet weak var interMaths1A: UITextField!
    @IBOutlet weak var interMaths1B: UITextField!
    @IBOutlet weak var interPhy1: UITextField!
    @IBOutlet weak var InterChe1: UITextField!
    
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    
    @IBAction func inter1NextBtn(_ sender: Any) {
        
        if((interSan1.text?.isEmpty)! || (interEng1.text?.isEmpty)! || (interMaths1A.text?.isEmpty)! || (interMaths1B.text?.isEmpty)! || (interPhy1.text?.isEmpty)!||(InterChe1.text?.isEmpty)! )
            {
                alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
                OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alertControllerObj.addAction(OKAction)
                present(alertControllerObj, animated: true, completion: nil)
            }
        else
        {
            FormData.shared .interResults1.append(self.interSan1 .text!)
            FormData.shared .interResults1.append(self.interEng1 .text!)
            FormData.shared .interResults1.append(self.interMaths1A .text!)
            FormData.shared .interResults1.append(self.interMaths1B .text!)
            FormData.shared .interResults1.append(self.interPhy1 .text!)
            FormData.shared .interResults1.append(self.InterChe1 .text!)
        
    
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
           
        }
        }
    
    @IBAction func dismiss(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        interSan1.delegate = self
        interEng1.delegate = self
        interMaths1A.delegate = self
        interMaths1B.delegate = self
        interPhy1.delegate = self
        InterChe1.delegate = self
       // Do any additional setup after loading the view.
    }
//    let  TotalMarksInter1stYr:UInt16=UInt16(interSan1)+UInt16(interEng1)+UInt16(interMaths1A)+UInt16(interMaths1B)+UInt16(interPhy1)+UInt16(InterChe1)
//    
//     print( totalMarksInter1stYr)
    
    
    //textFieldShouldBeginEditing validations
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==interSan1){
            
            return true
        }
        if (textField==interEng1){
            if ((Int(interSan1.text!)!<100)){
                
                return true
            }   else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==interMaths1A){
            
            if ((Int(interSan1.text!)!<100) &&
                (Int(interSan1.text!)!<100)){
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==interMaths1B){
            
            if ((Int(interSan1.text!)!<100) &&
                (Int(interEng1.text!)!<100) &&
                (Int(interMaths1A.text!)!<75))
            {
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==interPhy1){
            
            if ((Int(interSan1.text!)!<100) &&
                (Int(interEng1.text!)!<100) &&
                (Int(interMaths1A.text!)!<75) &&
                (Int(interMaths1B.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==InterChe1){
            
            if ((Int(interSan1.text!)! < 100) &&
                (Int(interEng1.text!)! < 100) &&
                (Int(interMaths1A.text!)! < 75) &&
                (Int(interMaths1B.text!)! < 75) &&
                (Int(interPhy1.text!)! < 60))
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
        
        
        if (textField==interSan1 || textField==interEng1 || textField==interMaths1A || textField==interMaths1B || textField==interPhy1 || textField==InterChe1)
        {
            let allowableNumbers = CharacterSet(charactersIn: "1234567890 ")
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
