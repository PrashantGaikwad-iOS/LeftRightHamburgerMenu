//
//  ViewController.swift
//  Day - 8 SideMenu
//
//  Created by Prashant Gaikwad on 2/6/18.
//  Copyright © 2018 Prashant Gaikwad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var alertButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sideMenus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sideMenus()  {
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(revealViewController().revealToggle(_:))
            
            revealViewController().rightViewRevealWidth = 140
            revealViewController().rearViewRevealWidth = 240
            
            
            alertButton.target = revealViewController()
            alertButton.action = #selector(revealViewController().rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
            
            
            
        }
        
    }


}

