//
//  Home.swift
//  PawanKumar
//
//  Created by Matrix Marketers on 30/08/19.
//  Copyright © 2019 pawan. All rights reserved.
//

import UIKit
import SideMenu

class Home: UIViewController,UISideMenuNavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.SideMenuSet(Screen: self.view)

        // Do any additional setup after loading the view.
    }
    
    //MARK : - SideMenu Controller Method
    func SideMenuSet(Screen : UIView){
        let StoryBoardrefrenceCreate : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        SideMenuManager.default.menuLeftNavigationController = StoryBoardrefrenceCreate.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
          SideMenuManager.default.menuRightNavigationController = StoryBoardrefrenceCreate.instantiateViewController(withIdentifier: "RightMenuNavigationController") as? UISideMenuNavigationController
        SideMenuManager.default.menuWidth = Screen.layer.frame.width * 70 / 100
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuPresentMode = .viewSlideInOut
        SideMenuManager.default.menuAnimationTransformScaleFactor = 0.8088554739952087
        SideMenuManager.default.menuAnimationBackgroundColor = UIColor.white
        SideMenuManager.default.menuDismissWhenBackgrounded = true
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)

        
    }
    func sideMenuWillAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing! (animated: \(animated))")
        
        
    }
    
    func sideMenuDidAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared! (animated: \(animated))")
        
        
        
    }
    
    func sideMenuWillDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing! (animated: \(animated))")
        
        
    }
    
    func sideMenuDidDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared! (animated: \(animated))")
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


