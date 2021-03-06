//
//  ViewController.swift
//  testApp2
//
//  Created by Ha Lam on 4/18/17.
//  Copyright © 2017 Gotadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ContainerDelegate {
  
  @IBOutlet weak var container: UIView!
  
  var childVC: TestContainerViewController?
  
  
  @IBAction func touchUpButton(_ sender: UIButton) {
    //    childVC?.delegate
    //    childVC?.testLabel.text = "lam"
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    childVC = storyBoard.instantiateViewController(withIdentifier: "test") as? TestContainerViewController
    childVC?.delegate = self
    
    self.addChildViewController(childVC!)
    childVC?.view.frame = CGRect(x: 0, y: 0, width: self.container.frame.size.width, height: self.container.frame.size.height)
    container.addSubview(childVC!.view)
    childVC?.didMove(toParentViewController: self)
    
    for _ in 0..<0 {
      print("Lam")
    }

    
  }
  
  func testContainer() {
    print("")
  }
  
  
}

