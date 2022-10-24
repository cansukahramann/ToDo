//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Cansu Kahraman on 12.07.2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model- data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            //iPad
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
