//
//  SceneDelegate.swift
//  test_ios_developer_EM
//
//  Created by Pavel Krigin on 07.09.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene) //чтобы связать окно со сценой через windowScene
        window?.rootViewController = ViewController()//Определяем VC с которого будет осуществляться загрузка
        window?.makeKeyAndVisible() // и отображаем его на экране
    }   
}

