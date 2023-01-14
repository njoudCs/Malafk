//
//  onboarding1.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 21/06/1444 AH.
//

import SwiftUI

struct onboarding1: View {
    var body: some View {
        ZStack{
        LinearGradient(colors: [Color(red: 0.796, green: 0.82, blue: 0.82)], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)

                Text("Be prepared")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .offset(y:110)
                Text("How to get the proper help when danger strikes? 6 in 10 adults in the US have a chronic disease and 4 in 10 adults have two or more")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 370.0)
                    .offset(y: 200)
            VStack(){ Image("ob1 image aah").resizable().scaledToFit().frame(width: 200).position(x:200 , y:250) }
            
            }
    }
}

struct onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        onboarding1()
    }
}
