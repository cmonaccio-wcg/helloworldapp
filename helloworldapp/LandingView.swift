//
//  LandingView.swift
//  helloworldapp
//
//  Created by Chris Monaccio on 2/3/21.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Text("Hello WCG World!")
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.black)
                .frame(width: 300, height: 100)
                .background(RoundedRectangle(cornerRadius: 4).fill(Color.white).shadow(radius: 3))
            Text("More Text")
            
            VStack {
                Text("Other Text")
                    .padding()
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
