//
//  SecondView.swift
//  App8
//
//  Created by Moneerah Alajmi on 8/26/22.
//

import SwiftUI

struct SecondView: View {
    let myC : Color
    let myS : String
    var body: some View {
        ZStack{
            myC.ignoresSafeArea()
            VStack{
                Text("myS")
            }
        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myC: Color.blue, myS: "Hi")
    }
}
