//
//  NextViewController.swift
//  SlideshowApp2
//
//  Created by 小島大舗 on 2020/07/23.
//  Copyright © 2020 daisuke.kojima. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var bigImage: UIImageView!
    
    var big:UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bigImage.image = big
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
