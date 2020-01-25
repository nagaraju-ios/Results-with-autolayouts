//
//  SecondViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/11/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //var frame:ViewController?
    
    
    
    @IBOutlet weak var totalMarksTF: UITextField!
    
    @IBOutlet weak var InteOutletSC: UISegmentedControl!
    @IBOutlet weak var uiView1StYr: UIView!
    @IBOutlet weak var uiView2ndYr: UIView!
    @IBOutlet weak var submitBtn: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
         uiView1StYr.isHidden = true
         uiView2ndYr.isHidden = true
         submitBtn.isHidden = false
        // Do any additional setup after loading the view.
        
        FormData.shared.interTotal = self.totalMarksTF.text!
    }
     @IBAction func backBtn(_ sender: Any) {
        
     let thirdVC =  self.storyboard?.instantiateViewController(withIdentifier: "BtechVC")as! BtechViewController
       present(thirdVC, animated: true){
    }
    }
  
    @IBAction func interSC(_ sender: UISegmentedControl) {
        interSegmentsShow()
    
    }
    
    func  interSegmentsShow() {
        
        if (InteOutletSC.selectedSegmentIndex == 0){
            
           
        let firstYr = self.storyboard?.instantiateViewController(withIdentifier: "Inter1st") as!
            inter1stYrViewController
            present(firstYr, animated: true){
            }
            
        }else if(InteOutletSC.selectedSegmentIndex == 1){
            
            let secondYr = self.storyboard?.instantiateViewController(withIdentifier: "Inter2nd") as!
            Inter2ndYrViewController
            present(secondYr, animated: true) {
                
            }
        }
       }
}
