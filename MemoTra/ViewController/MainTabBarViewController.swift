//
//  MainTabBarViewController.swift
//  MemoTra
//
//  Created by 伊藤寛晃 on 2016/11/13.
//  Copyright © 2016年 Hiroaki_Ito. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var viewControllerArray = [UIViewController]()
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: HomeViewController.className)
        let imageSelectViewController = mainStoryboard.instantiateViewController(withIdentifier: ImageSelectViewController.className)
        let tagViewController = mainStoryboard.instantiateViewController(withIdentifier: TagViewController.className)
        
        viewControllerArray.append(homeViewController)
        viewControllerArray.append(imageSelectViewController)
        viewControllerArray.append(tagViewController)
        
        self.setViewControllers(viewControllerArray, animated: true)
        
        self.selectedIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
