//
//  ScrollViewController.swift
//  testApp2
//
//  Created by Ha Lam on 4/22/17.
//  Copyright © 2017 Gotadi. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
  
//  @IBOutlet weak var orangeView: UIView!
//  
//  @IBOutlet weak var blueView: UIView!
//  
//  var isShowBlue = true
//  
//  
//  @IBAction func touchUpButton(_ sender: UIButton) {
//    isShowBlue = !isShowBlue
//    UIView.animate(withDuration: 0.5) {
//      self.blueView.isHidden = !self.isShowBlue
//    }
//    
//  }
  @IBOutlet weak var blueView: UIView!
  var isShowBlue = true
  
  @IBAction func touchUpForScrollView(_ sender: UIButton) {
    isShowBlue = !isShowBlue
    UIView.animate(withDuration: 0.5) {
      self.blueView.isHidden = !self.isShowBlue
    }

  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
