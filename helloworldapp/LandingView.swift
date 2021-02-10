//
//  LandingView.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/3/21.
//

import SwiftUI

struct LandingView: View {
  var body: some View {
    GeometryReader { geometry in
      ZStack {
        Image("LandingViewBackground")
          .resizable()
          .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          .frame(width: geometry.size.width, height: .infinity)
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          Text("Hello WCG World!")
            .padding()
          
          Text("More Text")
            .padding()
          VStack {
            Text("Other Text")
              .padding()
          }
          
        }
        .font(.system(size: 18))
        .foregroundColor(.black)
        .frame(width: 300)
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).fill(Color.white).shadow(radius: 3))
      }
    }
  }
}

struct LandingView_Previews: PreviewProvider {
  static var previews: some View {
    LandingView()
  }
}
