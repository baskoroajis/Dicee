//
//  ContentView.swift
//  Dice
//
//  Created by Baskoro on 06/02/20.
//  Copyright © 2020 Baskoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDice:Int = 1
    @State var rightDice:Int = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("diceeLogo")
                    .aspectRatio(1,contentMode: .fit)
                Spacer()
                HStack{
                    DiceView(n:self.leftDice)
                    DiceView(n:self.rightDice)
                }
                Spacer()
                Button(action: {
                    self.leftDice = Int.random(in:1...6)
                    self.rightDice = Int.random(in:1...6)
                }){
                    Text("Roll")
                        .font(.system(size:50))
                        .foregroundColor(Color.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
            }
            
        }
    }
}

struct DiceView:View{
    let n:Int
    
    var body: some View{
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
