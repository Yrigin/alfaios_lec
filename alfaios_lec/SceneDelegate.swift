//
//  SceneDelegate.swift
//  alfaios_lec
//
//  Created by Пётр Ярыгин on 09.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
      
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ViewController() // Your initial view controller.
        window.makeKeyAndVisible()
        window.backgroundColor = .green
    
        self.window = window
                
        let url:URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: {
            data,response,error in
            guard
                let data,
                let response,
                error == nil else{
                return
            }
            let jsonModel = String(data: data,encoding: .utf8)
            print(jsonModel)
                
        }).resume()
    }

   

}

