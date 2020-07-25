//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 小島大舗 on 2020/07/23.
//  Copyright © 2020 daisuke.kojima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer! = nil
    
    var timer_sec:Float = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    let image1:UIImage = UIImage(named:"foods/IMG_6976.jpeg")!
    let image2:UIImage = UIImage(named: "foods/IMG_8882.jpeg")!
    let image3:UIImage = UIImage(named: "foods/IMG_8886.jpeg")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        imageView.image = image1
        
    }
    
    @IBAction func tapAction(_ sender: Any) {
        
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
               
            let nextViewController: NextViewController = segue.destination as! NextViewController
        
            nextViewController.big = imageView.image
               
           }
    
    @IBAction func unwind(_ segue:UIStoryboardSegue){
        
    }
    
    @IBAction func nextBotton(_ sender: Any) {
        
        if imageView.image == image1 {
            imageView.image = image2
        } else if imageView.image == image2 {
            imageView.image = image3
        } else if imageView.image == image3 {
            imageView.image = image1
        }
    }
    
    @IBAction func backBotton(_ sender: Any) {
        
        if imageView.image == image1 {
                   imageView.image = image3
               } else if imageView.image == image2 {
                   imageView.image = image1
               } else if imageView.image == image3 {
                   imageView.image = image2
               }
        
    }
    
    @IBAction func outoBotton(_ sender: Any) {
        
        if timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0,target: self,selector: #selector(updateTimer(_:)), userInfo: nil,repeats: true)
        } else if timer != nil {
            
            timer.invalidate()
            timer = nil
            
        }
        
    }
    
    @objc func updateTimer(_ timer:Timer){
        
        if imageView.image == image1 {
                   imageView.image = image2
               } else if imageView.image == image2 {
                   imageView.image = image3
               } else if imageView.image == image3 {
                   imageView.image = image1
               }
        
    }
    
}


