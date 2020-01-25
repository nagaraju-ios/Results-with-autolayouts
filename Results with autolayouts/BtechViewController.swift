//
//  BtechViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/12/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class BtechViewController: UIViewController {

    @IBOutlet weak var semsSC: UISegmentedControl!
    @IBOutlet weak var btech: UISegmentedControl!
    
    @IBOutlet weak var fourthYrSem2: UIView!
    @IBOutlet weak var fourthYrSem1: UIView!
    @IBOutlet weak var thirdYrSem2: UIView!
    @IBOutlet weak var thirdYrSem1: UIView!
    @IBOutlet weak var sndYrSem2: UIView!
    @IBOutlet weak var FrsrYrView: UIView!
    @IBOutlet weak var sndYrSem1: UIView!
    
    var b1styr = [String]()
    var sem21 = [String]()
    var sem22 = [String]()
    var sem31 = [String]()
    var sem32 = [String]()
    var sem41 = [String]()
    var sem42 = [String]()
   

    
    
    @IBAction func BackBtn(_ sender: Any) {
        
        let final =  self.storyboard?.instantiateViewController(withIdentifier: "FinalVC")as! FinalViewController
        
        
        present(final, animated: true){
            
            
            final.b1st1TF.text = self.b1styr[0]
            final.b1st2TF.text = self.b1styr[1]
            final.b1st3TF.text = self.b1styr[2]
            final.b1st4TF.text = self.b1styr[3]
            final.b1st5TF.text = self.b1styr[4]
            final.b1st6TF.text = self.b1styr[5]
            final.b1st7TF.text = self.b1styr[6]
           

            final.B211TF.text = self.sem21[0]
            final.B212TF.text = self.sem21[1]
            final.B213TF.text = self.sem21[2]
            final.B214TF.text = self.sem21[3]
            final.B215TF.text = self.sem21[4]
            final.B216TF.text = self.sem21[5]
           


            final.B221TF.text = self.sem22[0]
            final.B222TF.text = self.sem22[1]
            final.B223TF.text = self.sem22[2]
            final.B224TF.text = self.sem22[3]
            final.B225TF.text = self.sem22[4]
            final.B226TF.text = self.sem22[5]


            final.B311TF.text = self.sem31[0]
            final.B312TF.text = self.sem31[1]
            final.B313TF.text = self.sem31[2]
            final.B314TF.text = self.sem31[3]
            final.B315TF.text = self.sem31[4]
            final.B316TF.text = self.sem31[5]
            

            final.B321TF.text = self.sem32[0]
            final.B322TF.text = self.sem32[1]
            final.B323TF.text = self.sem32[2]
            final.B324TF.text = self.sem32[3]
            final.B325TF.text = self.sem32[4]
            final.B326TF.text = self.sem32[5]

            final.B411TF.text = self.sem41[0]
            final.B412TF.text = self.sem41[1]
            final.B413TF.text = self.sem41[2]
            final.B414TF.text = self.sem41[3]
            final.B415TF.text = self.sem41[4]
            final.B416TF.text = self.sem41[5]


            final.B421TF.text = self.sem42[0]
            final.B422TF.text = self.sem42[1]
            final.B423TF.text = self.sem42[2]
            final.B424TF.text = self.sem42[3]
            final.B425TF.text = self.sem42[4]
            final.B426TF.text = self.sem42[5]
            final.B427TF.text = self.sem42[6]

         
            
            
            
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        FrsrYrView.isHidden = true
        sndYrSem1.isHidden = true
        sndYrSem2.isHidden = true
        thirdYrSem1.isHidden = true
        thirdYrSem2.isHidden = true
        fourthYrSem1.isHidden = true
        fourthYrSem2.isHidden = true
        semsSC.isHidden = true
        
    }
    
    @IBAction func frsrYrSems(_ sender: Any) {
        
        containerViewShow()
        
        
    }
    
    @IBAction func btechBtn(_ sender: UISegmentedControl) {
        
        containerViewShow()
        
    }
    
    
    func containerViewShow()
    {
        if(btech.selectedSegmentIndex == 0)
        {
            let bfirstYr = self.storyboard?.instantiateViewController(withIdentifier: "FristYr") as!
            B1stViewController
            present(bfirstYr, animated: true){
                bfirstYr.classes = self
            }
            semsSC.isHidden = true
            FrsrYrView.isHidden = false
            sndYrSem1.isHidden = true
            sndYrSem2.isHidden = true
            thirdYrSem1.isHidden = true
            thirdYrSem2.isHidden = true
            fourthYrSem1.isHidden = true
            fourthYrSem2.isHidden = true
        }
        else if(btech.selectedSegmentIndex == 1)
        {
            
            semsSC.isHidden = false
            if(btech.selectedSegmentIndex == 1 && semsSC.selectedSegmentIndex == 0)
            {
                let bscnd1Yr = self.storyboard?.instantiateViewController(withIdentifier: "SecondYrSem1") as!
                B2_1ViewController
                present(bscnd1Yr, animated: true){
                    bscnd1Yr.class21 = self
                    
                }
                sndYrSem1.isHidden = false
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = true
                thirdYrSem1.isHidden = true
                thirdYrSem2.isHidden = true
                fourthYrSem1.isHidden = true
                fourthYrSem2.isHidden = true
            }
            else if(btech.selectedSegmentIndex == 1 && semsSC.selectedSegmentIndex == 1)
            {
                let bscnd2Yr = self.storyboard?.instantiateViewController(withIdentifier: "SecondYrSem2") as!
                B2_2ViewController
                present(bscnd2Yr, animated: true){
                     bscnd2Yr.class22 = self
                }
                sndYrSem1.isHidden = true
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = false
                thirdYrSem1.isHidden = true
                thirdYrSem2.isHidden = true
                fourthYrSem1.isHidden = true
                fourthYrSem2.isHidden = true
            }
        }
        else if(btech.selectedSegmentIndex == 2)
        {
            semsSC.isHidden = false
            if(btech.selectedSegmentIndex == 2 && semsSC.selectedSegmentIndex == 0)
            {
                let bTHird1Yr = self.storyboard?.instantiateViewController(withIdentifier: "ThirdYrSem1") as!
                B3_1ViewController
                present(bTHird1Yr, animated: true){
                     bTHird1Yr.class31 = self
                }
                thirdYrSem1.isHidden = false
                sndYrSem1.isHidden = true
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = true
                thirdYrSem2.isHidden = true
                fourthYrSem1.isHidden = true
                fourthYrSem2.isHidden = true
            }
            else if(btech.selectedSegmentIndex == 2 && semsSC.selectedSegmentIndex == 1)
            {
                let bTHird2Yr = self.storyboard?.instantiateViewController(withIdentifier: "ThirdYrSem2") as!
                B3_2ViewController
                present(bTHird2Yr, animated: true){
                     bTHird2Yr.class32 = self
                }
                thirdYrSem2.isHidden = false
                sndYrSem1.isHidden = true
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = true
                thirdYrSem1.isHidden = true
                fourthYrSem1.isHidden = true
                fourthYrSem2.isHidden = true
            }
        }
        else if(btech.selectedSegmentIndex == 3)
        {
            semsSC.isHidden = false
            if(btech.selectedSegmentIndex == 3 && semsSC.selectedSegmentIndex == 0)
            {
                let bForth1Yr = self.storyboard?.instantiateViewController(withIdentifier: "fourthYrSem1") as!
                B4_1ViewController
                present(bForth1Yr, animated: true){
                     bForth1Yr.class41 = self
                }
                fourthYrSem1.isHidden = false
                sndYrSem1.isHidden = true
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = true
                thirdYrSem1.isHidden = true
                thirdYrSem2.isHidden = true
                fourthYrSem2.isHidden = true
            }
            else if(btech.selectedSegmentIndex == 3 && semsSC.selectedSegmentIndex == 1)
            {
                let bForth2Yr = self.storyboard?.instantiateViewController(withIdentifier: "fourthYrSem2") as!
                B4_2ViewController
                present(bForth2Yr, animated: true){
                     bForth2Yr.class42 = self
                }
                fourthYrSem2.isHidden = false
                sndYrSem1.isHidden = true
                FrsrYrView.isHidden = true
                sndYrSem2.isHidden = true
                thirdYrSem1.isHidden = true
                thirdYrSem2.isHidden = true
                fourthYrSem1.isHidden = true
            }
        }
    }

    
    

    
}
