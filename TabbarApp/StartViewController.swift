//
//  ViewController.swift
//  TabbarApp
//
//  Created by Вадим Ахматханов on 12.05.2023.
//

import UIKit

class StartViewController: UIViewController {
    
    //override func viewDidLoad() {
    //    super.viewDidLoad()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else {
                    return
                }
                thirdVC.title = "Third Screen"
                thirdVC.view.backgroundColor = .systemRed
            }
            
            
        }
    }
}
