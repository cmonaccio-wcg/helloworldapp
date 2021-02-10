//
//  ContentView.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/1/21.
//

import SwiftUI

struct AppView: View {
  @State var showMenu = false
  
    var body: some View {
      NavigationView {
        GeometryReader { geometry in
          ZStack {
            
            TabView {
              
                LandingView()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                ProductCatalog()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Product Catalog")
                        
                    }
              
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                        
                    }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .offset(x: self.showMenu ? geometry.size.width*0.5 : 0)
            .disabled(self.showMenu ? true : false)
          }
          
          if self.showMenu {
            Menu()
//              .frame
              .transition(.move(edge: .leading))
          }
        }
        
        .navigationBarItems(leading: (
          Button(action: {
            withAnimation {
              self.showMenu.toggle()
            }
          }) {
            Text("Menu")
          }
        ))
      }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
