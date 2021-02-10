//
//  Menu.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/4/21.
//

import SwiftUI

struct Menu: View {
  var body: some View {
  
      ZStack(alignment: .leading) {
        VisualEffectView(effect: UIBlurEffect(style: .dark))
          .frame(width: .infinity, alignment: .leading)
          .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: .leading) {
          Text("Menu")
            .font(.title2)
          
          VStack(alignment: .leading) {
            Text("Admin")
              .font(.headline)
            HStack {
              Image(systemName: "person")
                .foregroundColor(.gray)
                .imageScale(.large)
              Text("My Account")
              
            }
            .padding(.top, 4)
            HStack {
              Image(systemName: "gear")
                .foregroundColor(.gray)
                .imageScale(.large)
              Text("Settings")
            }
            .padding(.top, 4)
          }
          VStack(alignment: .leading) {
            Text("Support")
              .font(.headline)
            HStack {
              Image(systemName: "message")
                .foregroundColor(.gray)
                .imageScale(.large)
              Text("Submit Feedback")
            }
            .padding(.top, 4)
            HStack {
              Image(systemName: "phone")
                .foregroundColor(.gray)
                .imageScale(.large)
              Text("Call Customer Service")
            }
            .padding(.top, 4)
            HStack {
              Image(systemName: "exclamationmark.triangle")
                .foregroundColor(.gray)
                .imageScale(.large)
              Text("Submit Defect Report")
            }
            .padding(.top, 4)
          }
          .padding(.top, 30)
          Spacer()
          
        }
        .padding()
        .foregroundColor(.white)
        
        
      }

    }
    
}

struct Menu_Previews: PreviewProvider {
  static var previews: some View {
    Menu()
  }
}
