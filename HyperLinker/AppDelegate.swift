//
//  AppDelegate.swift
//  HyperLinker
//
//  Created by Joseph Di Pasquale on 2017-06-18.
//  Copyright © 2017 SiteWiz. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var item : NSStatusItem? = nil

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        item = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
        item?.title = "HyperLinker"
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Add Hyperlink", action: #selector(AppDelegate.linkHyper), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(AppDelegate.quit), keyEquivalent: ""))
        item?.menu = menu
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func linkHyper() {
        print("We made it!")
    }
    
    func quit() {
        NSApplication.shared().terminate(self)
    }


}

