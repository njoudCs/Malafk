//
//  Main.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 17/06/1444 AH.
//

import SwiftUI

struct Main: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var card: FetchedResults<Malafk>    
    var card1: FetchedResults<Malafk>.Element
    
    @State private var name = ""
    @State private var age = ""
    @State private var chronicMedicalConditions=""
    @State private var medicationName = ""
    @State private var doses = ""
    @State private var schedules = ""
    @State private var phone1 = ""
    @State private var phone2 = ""
    
    var body: some View {
        GeometryReader{ geo in
            NavigationView {
                //Backgraound BEGIN
                ZStack {
                    Image("s")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width , height: geo.size.height, alignment: .center)
                    //Backgraound END
                    
                    VStack(alignment: .leading) {
                        
                        TextField("name", text: $name , prompt: Text("Enter name...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                      
                            .cornerRadius(10).padding()
                        TextField("Age ", text: $age ,prompt: Text("Enter age...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                      
                            .cornerRadius(10).padding()
                        
                        
                        TextField("chronicMedicalConditions", text: $chronicMedicalConditions ,prompt: Text("Enter chronic...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                        
                            .cornerRadius(10).padding()
                        
                        TextField("medicationName ", text: $medicationName, prompt: Text("Enter med name ...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                       
                            .cornerRadius(10).padding()
                        
                        
                        TextField("doses ", text: $doses ,prompt: Text("Enter doses...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                            .cornerRadius(10).padding()
                        
                        TextField("schedules ", text: $schedules ,prompt: Text("Enter sc...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                            .cornerRadius(10).padding()
                        
                        
                        
                        
                        TextField("phone one ", text: $phone1 ,prompt: Text("Enter phone one...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                            .cornerRadius(10).padding()
                        
                        TextField("phone two", text: $phone2 ,prompt: Text("Enter phone two...")).font(.title2)
                            .textFieldStyle(.roundedBorder)
                            .autocapitalization(.none)
                            .cornerRadius(10)
                            .padding()
                        
                        
                        
                        
                    }.frame(width: 350 , height: 40)
                        .navigationTitle("")
                    
                    Button("Save") {
                        DataController().addata(
                            name: name,
                            age: age,
                            chronicMedicalConditions :chronicMedicalConditions ,
                            medicationName: medicationName ,
                            doses : doses ,
                            schedules: schedules,
                            phone1: phone1 ,
                            phone2: phone2,
                            context: managedObjContext
                        )
                        dismiss()
                    }.position(x :190, y: 720)
                        .buttonStyle(.bordered)
                        .tint(Color("color1"))
                        .buttonStyle(.borderedProminent)
                    
                    
                    
                }
                
                
                
            }
            
            
        }
        
    }}


