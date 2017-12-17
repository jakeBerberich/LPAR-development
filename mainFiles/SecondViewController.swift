//
//  SecondViewController.swift
//  Polo LPARs
//
//  Created by Jake Berberich on 12/7/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
 var lpar = Lpars() // reference to Lpars business controller
    
   var  lparList = Array<LparEntity>()   // holds the arry of Lpar rows
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.lparList = self.lpar.getAllEntities()
        
  
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

