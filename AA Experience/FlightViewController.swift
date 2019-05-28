//
//  ViewController.swift
//  AAHackathon
//
//  Created by Zheng Xiao & Eric Yium on 1/26/19.
//  Copyright © 2019 Zheng Xiao & Eric Yium. All rights reserved.
//

import UIKit

class FlightViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var mealSelectionButton: UIButton!
    
    @IBOutlet weak var infoButton: UIButton!
    //Declaring variables for the background image rotation
    var images:[String] = []
    var timer = Timer()
    var photoCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //On load for background image rotation
        images = ["Paris", "NewYorkCity", "London"]
        backgroundImage.image = UIImage.init(named: "Paris")
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(runImages), userInfo: nil, repeats: true)
    }
    
    
    //Doing the actual work to rotate the pictures
    @objc func runImages() {
        
        if (photoCount < images.count - 1){
            photoCount = photoCount  + 1;
        }else{
            photoCount = 0;
        }
        
        UIView.transition(with: self.backgroundImage, duration: 2.0, options: .transitionCrossDissolve, animations: {
            self.backgroundImage.image = UIImage.init(named: self.images[self.photoCount])
        }, completion: nil)
        
    }

    
    
    
}

