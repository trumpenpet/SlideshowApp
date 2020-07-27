//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 小島大舗 on 2020/07/23.
//  Copyright © 2020 daisuke.kojima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonChenge: UIButton!
    
    @IBOutlet weak var nextView: UIButton!
    
    var timer:Timer! = nil
    
    var timer_sec:Float = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backView: UIButton!
    
    let image1:UIImage = UIImage(named:"foods/IMG_6976.jpeg")!
    let image2:UIImage = UIImage(named: "foods/IMG_8882.jpeg")!
    let image3:UIImage = UIImage(named: "foods/IMG_8886.jpeg")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        imageView.image = image1
        
        buttonChenge.setTitle("再生", for: .normal)
    
        }
    
    @IBAction func tapAction(_ sender: Any) {
        
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
               
            let nextViewController: NextViewController = segue.destination as! NextViewController
        
            nextViewController.big = imageView.image
        
        if timer != nil{
        timer.invalidate()
        timer = nil
        buttonChenge.setTitle("再生", for: .normal)
        nextView.isEnabled = true
        backView.isEnabled = true
        }
               
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
            buttonChenge.setTitle("停止", for: .normal)
            
            nextView.isEnabled = false
            backView.isEnabled = false
            
        } else if timer != nil {
            
            timer.invalidate()
            timer = nil
            buttonChenge.setTitle("再生", for: .normal)
            nextView.isEnabled = true
            backView.isEnabled = true
            
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


