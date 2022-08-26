//
//  ContentView.swift
//  App8
//
//  Created by Moneerah Alajmi on 8/26/22.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.indigo.opacity(0.3),Color.blue.opacity(0.3),Color.yellow.opacity(0.3),Color.pink.opacity(0.3)]
    @State var myNote = ""
    @State var selected: Color = Color.indigo
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.opacity(0.3)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("اختر اللون المفضل")
                        .font(.system(size: 25))

                    HStack{
                    ForEach(colors,id:\.self){
                        Color in
                        Circle()
                            .fill(Color)
                            .frame(width: 50, height: 50)
                            .onTapGesture {
                                selected = Color
                            }
                    }
                    }.padding()
                    Text("ماذا تريد ان تكتب")
                        .font(.system(size: 20))
                    TextField("اكتب هنا",text: $myNote)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    Spacer()
                    NavigationLink(destination: SecondView(myC: selected, myS: myNote)){
                    Text("حفظ")
                            .foregroundColor(.white)
                        .font(.system(size: 30))
                        .frame(width: 200, height: 40)
                        .background(.green)
                        .cornerRadius(20)
                    
                    }

                }
            }
            .navigationTitle("دفتر يومياتي")
      
        
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
