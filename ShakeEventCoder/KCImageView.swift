//
//  KCImageView.swift
//  ShakeEventCoder
//
//  Created by VcaiTech on 2017/4/20.
//  Copyright © 2017年 Tang guifu. All rights reserved.
//

import UIKit

class KCImageView: UIView {
    
    private let  kImageCount = 3
    
    private var  imageView:UIImageView!
    
    private var defaultFrame =  CGRect(x:0, y:64, width:200, height:200)
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == UIEventSubtype.motionShake {
            imageView.image = getImage()
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
    }
    
    override init(frame:CGRect) {
        defaultFrame = frame;
        let imageFrame = CGRect(x: 0,y: 0,width: defaultFrame.size.width,height: defaultFrame.size.height)
        imageView = UIImageView.init(frame: imageFrame)
        let imageName = "avatar0.jpg"
        imageView.image = UIImage.init(named: imageName)
        super.init(frame: defaultFrame)
        self.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getImage() -> UIImage {
        let value1 = Int.init(arc4random())
        let result =  value1 % kImageCount
        let imageName = String.init(format: "avatar%i.jpg", result)
        let image = UIImage.init(named: imageName)
        return image!
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
}
