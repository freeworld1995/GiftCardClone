//
//  ViewController.swift
//  GiftCardClone
//
//  Created by Jimmy Hoang on 2/14/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageArray = [UIImage]()
    
    @IBOutlet weak var root: UIView!
    @IBOutlet weak var container: SpringView!
    @IBOutlet weak var topCard: SpringImageView!
    @IBOutlet weak var priceLabel: UIImageView!
    @IBOutlet weak var message: UIImageView!
    @IBOutlet weak var checkOutButton: UIButton!

    @IBOutlet weak var l1: UIImageView!
    @IBOutlet weak var l2: UIImageView!
    @IBOutlet weak var l3: UIImageView!
    @IBOutlet weak var l4: UIImageView!
    @IBOutlet weak var l5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        container.layer.shadowColor = UIColor.blue.cgColor
        container.layer.shadowOpacity = 1.0
        container.layer.shadowOffset = CGSize(width: 10, height: 10)
        container.layer.shadowRadius = 10
        container.layer.shadowPath = UIBezierPath(rect: container.bounds).cgPath
        container.layer.shouldRasterize = true
        
        for i in 11...39 {
            let image = UIImage(named: "gifbutton000\(i).png")
            imageArray.append(image!)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

    }
    
    @IBAction func buyPressed(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.curve = "linear"
        sender.duration = 0.8
        sender.force = 0.4
        sender.animateToNext {
            let imageView = UIImageView(frame: sender.frame)
            self.view.addSubview(imageView)
            imageView.image = self.imageArray[self.imageArray.count - 1]
            imageView.animationImages = self.imageArray
            imageView.animationDuration = 1.0
            imageView.animationRepeatCount = 1
            imageView.startAnimating()
            UIView.transition(from: sender, to: imageView, duration: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, completion: { (finished) in
            
                self.topCard.animation = "slideUp"
                self.topCard.curve = "linear"
                self.topCard.duration = 2.0
                self.topCard.damping = 1.0
                self.topCard.animateTo()

                UIView.animate(withDuration: 2.0, delay: 0.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.2, options: [], animations: {
                    self.priceLabel.frame = CGRect(x: self.priceLabel.frame.origin.x - 246, y: self.priceLabel.frame.origin.y, width: self.priceLabel.frame.width, height: self.priceLabel.frame.height)
                    imageView.frame = CGRect(x: imageView.frame.origin.x - 246, y: imageView.frame.origin.y, width: imageView.frame.width, height: imageView.frame.height)
                    self.message.frame = CGRect(x: self.message.frame.origin.x - 378, y: self.message.frame.origin.y, width: self.message.frame.width, height: self.message.frame.height)
                    self.checkOutButton.frame = CGRect(x: self.checkOutButton.frame.origin.x - 381, y: self.checkOutButton.frame.origin.y, width: self.checkOutButton.frame.width, height: self.checkOutButton.frame.height)
                    
                    UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: { 
                        self.l1.frame = CGRect(x: self.l1.frame.origin.x - 457, y: self.l1.frame.origin.y, width: self.l1.frame.width, height: self.l1.frame.height)
                    }, completion: nil)
                    
                    UIView.animate(withDuration: 2.0, delay: 0.05, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                        self.l2.frame = CGRect(x: self.l2.frame.origin.x - 457, y: self.l2.frame.origin.y, width: self.l2.frame.width, height: self.l2.frame.height)
                    }, completion: nil)
                    
                    UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                        self.l3.frame = CGRect(x: self.l3.frame.origin.x - 457, y: self.l3.frame.origin.y, width: self.l3.frame.width, height: self.l3.frame.height)
                    }, completion: nil)
                    
                    UIView.animate(withDuration: 2.0, delay: 0.15, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                        self.l4.frame = CGRect(x: self.l4.frame.origin.x - 457, y: self.l4.frame.origin.y, width: self.l4.frame.width, height: self.l4.frame.height)
                    }, completion: nil)
                    
                    UIView.animate(withDuration: 2.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                        self.l5.frame = CGRect(x: self.l5.frame.origin.x - 457, y: self.l5.frame.origin.y, width: self.l5.frame.width, height: self.l5.frame.height)
                    }, completion: nil)
                    
                }, completion: nil)
                
            })
            
        }
    
    }
    
    @IBAction func checkoutPressed(_ sender: Any) {
        
        root.addSubview(container)
        let image = UIImage(named: "CardA.png")
        let carda = UIImageView(image: image)
        carda.frame = self.container.bounds
        root.addSubview(carda)
        
        UIView.transition(from: container, to: carda, duration: 0.6, options: UIViewAnimationOptions.transitionFlipFromBottom) { (finished) in
            print("finished flip")
        }
        
 
//        UIView.transition(with: container, duration: 0.6, options: UIViewAnimationOptions.transitionFlipFromBottom, animations: {
//            UIView.transition(from: image, to: <#T##UIView#>, duration: <#T##TimeInterval#>, options: <#T##UIViewAnimationOptions#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
//        }) { (finished) in
//        }
//
//        container.animation = "flipY"
//        container.curve = "linear"
//        container.duration = 0.6
//        container.damping = 0.8
//        container.velocity = 1.0
//        container.animate()
        
        
    }
}

