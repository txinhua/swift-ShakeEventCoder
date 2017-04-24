//
//  ViewController.swift
//  ShakeEventCoder
//
//  Created by VcaiTech on 2017/4/20.
//  Copyright © 2017年 Tang guifu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var kcImageView:KCImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultFrame = CGRect(x: 0, y: 64, width: 200, height: 200)
        kcImageView = KCImageView.init(frame: defaultFrame)
        self.view.addSubview(kcImageView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        kcImageView.isUserInteractionEnabled = true
        let isFirstResopnder = kcImageView.becomeFirstResponder()
        if isFirstResopnder{
           print("haha")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        kcImageView.resignFirstResponder()
    }


}

