//
//  FinalViewController.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/15/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    
    @IBOutlet weak var frstNameTF1: UITextField!
    @IBOutlet weak var lastNameTF1: UITextField!
    @IBOutlet weak var mblNubTF1: UITextField!
    @IBOutlet weak var QualifyTF1: UITextField!
    @IBOutlet weak var ageTF1: UITextField!
    
    
    @IBOutlet weak var Inter1SanTF: UITextField!
    @IBOutlet weak var inter1EngTF: UITextField!
    @IBOutlet weak var inter1Maths1ATF: UITextField!
    @IBOutlet weak var inter1Maths1BTF: UITextField!
    @IBOutlet weak var inter1PhyTF: UITextField!
    @IBOutlet weak var inter1CheTF: UITextField!
    
    @IBOutlet weak var inter2SanTF: UITextField!
    @IBOutlet weak var inter2EngTF: UITextField!
    @IBOutlet weak var Inter2Maths2ATf: UITextField!
    @IBOutlet weak var inter2Maths2B: UITextField!
    @IBOutlet weak var inter2PhyTF: UITextField!
    @IBOutlet weak var inter2CheTF: UITextField!
    
    @IBOutlet weak var interMarks: UILabel!
    
    @IBOutlet weak var b1st1TF: UITextField!
    @IBOutlet weak var b1st2TF: UITextField!
    @IBOutlet weak var b1st3TF: UITextField!
    @IBOutlet weak var b1st4TF: UITextField!
    @IBOutlet weak var b1st5TF: UITextField!
    @IBOutlet weak var b1st6TF: UITextField!
    @IBOutlet weak var b1st7TF: UITextField!
    
    
    @IBOutlet weak var B211TF: UITextField!
    @IBOutlet weak var B212TF: UITextField!
    @IBOutlet weak var B213TF: UITextField!
    @IBOutlet weak var B214TF: UITextField!
    @IBOutlet weak var B215TF: UITextField!
    @IBOutlet weak var B216TF: UITextField!
    
    @IBOutlet weak var B221TF: UITextField!
    @IBOutlet weak var B223TF: UITextField!
    @IBOutlet weak var B222TF: UITextField!
    @IBOutlet weak var B224TF: UITextField!
    @IBOutlet weak var B225TF: UITextField!
    @IBOutlet weak var B226TF: UITextField!
    
    @IBOutlet weak var B311TF: UITextField!
    @IBOutlet weak var B312TF: UITextField!
    @IBOutlet weak var B313TF: UITextField!
    @IBOutlet weak var B314TF: UITextField!
    @IBOutlet weak var B315TF: UITextField!
    @IBOutlet weak var B316TF: UITextField!
    
    
    @IBOutlet weak var B321TF: UITextField!
    @IBOutlet weak var B322TF: UITextField!
    @IBOutlet weak var B323TF: UITextField!
    @IBOutlet weak var B324TF: UITextField!
    @IBOutlet weak var B325TF: UITextField!
    @IBOutlet weak var B326TF: UITextField!
    
    
    @IBOutlet weak var B411TF: UITextField!
    @IBOutlet weak var B412TF: UITextField!
    @IBOutlet weak var B413TF: UITextField!
    @IBOutlet weak var B414TF: UITextField!
    @IBOutlet weak var B415TF: UITextField!
    @IBOutlet weak var B416TF: UITextField!
    
    @IBOutlet weak var B421TF: UITextField!
    @IBOutlet weak var B422TF: UITextField!
    @IBOutlet weak var B423TF: UITextField!
    @IBOutlet weak var B424TF: UITextField!
    @IBOutlet weak var B425TF: UITextField!
    @IBOutlet weak var B426TF: UITextField!
    @IBOutlet weak var B427TF: UITextField!
    
    @IBOutlet weak var interTotalMrks: UILabel!
    @IBOutlet weak var btechTotalMarks: UITextField!
    
    
    @IBAction func finalBackBtn(_ sender: Any) {
        
//        let finalVC =  self.storyboard?.instantiateViewController(withIdentifier: "FristVC") as!        BtechViewController
//
//        dismiss(animated: true){
//
//
//
//        }
    }
    var interResults1 = [String]()
    var interResults2 = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var marks1 = [Int]()
        var marks2 = [Int]()
        var total = 0
        for (x,y) in zip(self.interResults1,self.interResults2)
        {
            let year1 = Int(x)!
            let year2 = Int(y)!
            marks1.append(year1)
            marks2.append(year2)
            
            total += (year1 + year2)
            
            
        }
        
        
        interMarks.text! = String(total)
        print("interMarks:",total)
        
        frstNameTF1.text! = FormData.shared.name1[0]
        lastNameTF1.text! = FormData.shared.name1[1]
        mblNubTF1.text! = FormData.shared.name1[2]
        ageTF1.text! = FormData.shared.name1[3]
        QualifyTF1.text! = FormData.shared.name1[4]
        
        Inter1SanTF .text!    = FormData.shared .interResults1[0]
        inter1EngTF .text!    = FormData.shared .interResults1[1]
        inter1Maths1ATF .text! = FormData.shared .interResults1[2]
        inter1Maths1BTF .text! = FormData.shared .interResults1[3]
        inter1PhyTF .text!    = FormData.shared .interResults1[4]
        inter1CheTF .text!    = FormData.shared .interResults1[5]
        
        inter2SanTF .text!    = FormData.shared .interResults2[0]
        inter2EngTF .text!    = FormData.shared .interResults2[1]
        Inter2Maths2ATf .text! = FormData.shared .interResults2[2]
        inter2Maths2B .text! = FormData.shared .interResults2[3]
        inter2PhyTF .text!    = FormData.shared .interResults2[4]
        inter2CheTF .text!    = FormData.shared .interResults2[5]
        // Do any additional setup after loading the view.
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
