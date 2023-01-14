//
//  onboarding3.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 21/06/1444 AH.
//

import SwiftUI

struct onboarding3: View {
    var body: some View {
        ZStack{
                       LinearGradient(colors: [Color(red: 0.5892096162, green: 0.7032615542, blue: 0.678381741)], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                     
                       Text("Have the right tools")
                           .font(.largeTitle)
                           .fontWeight(.bold)
                           .foregroundColor(Color.white)
                         .offset(y:110)
                       Text("Fill in your health status for it to be displayed on a widget that can be accessed when your phone is locked ")
                           .font(.system(size: 20))
                           .fontWeight(.bold)
                           .foregroundColor(Color.white)
                           .multilineTextAlignment(.center)
                           .frame(width: 370.0)
                           .offset(y: 200)
            VStack(){ Image("ob3 image aah").resizable().scaledToFit().frame(width: 200).position(x:200 , y:300)
            }
               }.edgesIgnoringSafeArea(.all)

    }
}

struct onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        onboarding3()
    }
}
