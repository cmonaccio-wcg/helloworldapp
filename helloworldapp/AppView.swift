//
//  ContentView.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/1/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            
            LandingView()
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
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
