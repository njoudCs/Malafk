//
//  onboarding2.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 21/06/1444 AH.
//

import SwiftUI

struct onboarding2: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color(red: 0.6495551467, green: 0.7198395133, blue: 0.7014514804)], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            Text("Accessible information")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .offset(y:110)
            Text("Providing information about your mental and physical state is essential to health care and when it's not an option it could lead to getting the wrong help ")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .frame(width: 370.0)
                .offset(y: 200)
            VStack(){ Image("ob2 image aah").resizable().scaledToFit().frame(width: 150).position(x:200 , y:250)
            
                
            }
            
            
        }
        
    }
    
}

struct onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        onboarding2()
    }
}
