//
//  AppDelegate.swift
//  2DA_EVA_1_CICLO_DE_VIDA
//
//  Created by TEMPORAL2 on 07/03/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        //Se agrega print para imprimir en consola el estado de la aplicación
        print("WillResignActive")//Estado cuando la app esta en segundo plano    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        //Se agrega print para imprimir en consola el estado de la aplicación
        print("DidEnterBackground")//Estado cuando se minimiza la app
        
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        //Se agrega print para imprimir en consola el estado de la aplicación
        print("WillEnterForeground")//Estado cuando se abre la app
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        //Se agrega print para imprimir en consola el estado de la aplicación
        print("DidBecomeActive")//Mostrará la lista de las aplicaciones en la memoria
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        //Se agrega print para imprimir en consola el estado de la aplicación
        print("WillTerminate")//Estado cuando la app se cierra y es destruida
    }


}

}