//
//  BaseTabBarController.swift
//  Code Auto Layout
//
//  Created by 凱聿蔡凱聿 on 2023/12/6.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
                    // 將 UIViewController() -> 置換成 AppsSearchController()
                    createNavController(viewController: AppsSearchController(), title: "搜索", image: #imageLiteral(resourceName: "search")),
                    createNavController(viewController: UIViewController(), title: "今日", image: #imageLiteral(resourceName: "today_icon")),
                    createNavController(viewController: UIViewController(), title: "應用", image: #imageLiteral(resourceName: "apps")),
                ]
    }

    fileprivate func createNavController(viewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController

    }
}
