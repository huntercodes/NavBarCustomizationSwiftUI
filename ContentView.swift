//
//  ContentView.swift
//  NavigationBarCustomization
//
//  Created by hunter downey on 4/19/22.
//

import SwiftUI

struct ContentView: View {
    // this init() is only needed on your starting view.
    // any navigation from this view will carry over these customizations.
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        
        // NOTE: for the UIColor's, i show how to use rgb values. personally i would actually create a ColorSet in assets.
        // this gives you the ability to have different colors display, depending on the user having light mode and dark mode.
        // for an example, if i named a ColorSet "mainBackgroundColor" i would set it like this:
        // UIColor(named: "mainBackgroundColor")
        
        // this is to change the background color of the navigation bar
        coloredAppearance.backgroundColor = UIColor(red: 65/255, green: 125/255, blue: 122/255, alpha: 1.0)
        
        // this is to change the color and font for .inline
        coloredAppearance.titleTextAttributes = [ .foregroundColor: UIColor(red: 237/255, green: 230/255, blue: 219/255, alpha: 1.0), .font: UIFont(name: "CourierNewPS-BoldMT", size: 26)!]
        
        // this is to change the color and font for .large
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(red: 237/255, green: 230/255, blue: 219/255, alpha: 1.0), .font: UIFont(name: "CourierNewPS-BoldMT", size: 20)!]
        
        // for tint color (match with text color ;)
        UINavigationBar.appearance().tintColor = UIColor(red: 237/255, green: 230/255, blue: 219/255, alpha: 1.0)
    
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
