//
//  B4-2ViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class B4_2ViewController: UIViewController,UITextFieldDelegate {
   
    var class42:BtechViewController!
    
    @IBOutlet weak var avi42TF: UITextField!
    @IBOutlet weak var hel42TF: UITextField!
    @IBOutlet weak var lvmt42TF: UITextField!
    @IBOutlet weak var seminar42TF: UITextField!
    @IBOutlet weak var projct42TF: UITextField!
    @IBOutlet weak var prowork42TF: UITextField!
    @IBOutlet weak var viva42TF: UITextField!
    
    
    var alertControllerObj:UIAlertController!
    var OKAction:UIAlertAction!
    
    @IBAction func dismisBtn(_ sender: Any) {
        
        let b42Vc = self.storyboard?.instantiateViewController(withIdentifier: "BtechVC") as! BtechViewController
        present(b42Vc,animated: true ) {
            
        }
        
    }
    @IBAction func b42Btn(_ sender: Any) {
        
        if((avi42TF.text?.isEmpty)! || (hel42TF.text?.isEmpty)! || (lvmt42TF.text?.isEmpty)! || (seminar42TF.text?.isEmpty)! || (projct42TF.text?.isEmpty)!||(prowork42TF.text?.isEmpty)!||(viva42TF.text?.isEmpty)! )
        {
            alertControllerObj = UIAlertController(title: "Alert", message: "All fields are required", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
        }
        else
        {
            self.class42.sem42.append(self.avi42TF.text!)
            self.class42.sem42.append(self.hel42TF.text!)
            self.class42.sem42.append(self.lvmt42TF.text!)
            self.class42.sem42.append(self.seminar42TF.text!)
            self.class42.sem42.append(self.projct42TF.text!)
            self.class42.sem42.append(self.prowork42TF.text!)
            self.class42.sem42.append(self.viva42TF.text!)
            
            
            
            alertControllerObj = UIAlertController(title: "Alert", message: "Submitted Successfully", preferredStyle: UIAlertController.Style.alert)
            OKAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertControllerObj.addAction(OKAction)
            present(alertControllerObj, animated: true, completion: nil)
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avi42TF.delegate = self
        hel42TF.delegate = self
        lvmt42TF.delegate = self
        seminar42TF.delegate = self
        projct42TF.delegate = self
        prowork42TF.delegate = self
        viva42TF.delegate = self

        // Do any additional setup after loading the view.
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
        if (textField==avi42TF){
            
            return true
        }
        
        if (textField==hel42TF){
            if ((Int(avi42TF.text!)!<75)){
                
                return true
                
            }   else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==lvmt42TF){
            
            if ((Int(avi42TF.text!)!<75) &&
                (Int(hel42TF.text!)!<75)){
                
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
        }
        else if (textField==seminar42TF){
            
            if ((Int(avi42TF.text!)!<75) &&
                (Int(hel42TF.text!)!<75) &&
                (Int(lvmt42TF.text!)!<75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
            
            
        else if (textField==projct42TF){
            
            if ((Int(avi42TF.text!)!<75) &&
                (Int(hel42TF.text!)!<75) &&
                (Int(lvmt42TF.text!)!<75) &&
                (Int(seminar42TF.text!)!<75) )
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==prowork42TF){
            
            if ((Int(avi42TF.text!)!<75) &&
                (Int(hel42TF.text!)!<75) &&
                (Int(lvmt42TF.text!)!<75) &&
                (Int(seminar42TF.text!)!<75) &&
                (Int(projct42TF.text!)! < 75))
            {
                
                return true
                
            }else
            {
                alertMsg()
                return false
            }
            
        }
        else if (textField==viva42TF){
            
            if ((Int(avi42TF.text!)!<75) &&
                (Int(hel42TF.text!)!<75) &&
                (Int(lvmt42TF.text!)!<75) &&
                (Int(seminar42TF.text!)!<75) &&
                (Int(projct42TF.text!)! < 75) &&
                (Int(prowork42TF.text!)! < 75))
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
        
        
        if (textField==avi42TF || textField==hel42TF || textField==lvmt42TF || textField==seminar42TF || textField==projct42TF || textField==prowork42TF || textField==viva42TF)
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
