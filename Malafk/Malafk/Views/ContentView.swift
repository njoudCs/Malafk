//
//  ContentView.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 17/06/1444 AH.
//

import SwiftUI
import CoreData





struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var card: FetchedResults<Malafk>
    @Environment(\.dismiss) var dismiss

       @State private var name = ""
    @State private var age = ""
    @State private var chronicMedicalConditions = ""
    @State private var medicationName = ""
    @State private var doses = ""
    @State private var schedules = ""
    @State private var phone1 = ""
    @State private var phone2 = ""
    
    @State private var showingAddView = false
    
    var body: some View {
        
     /*   TabView{

                    onboarding1()

                    
                    onboarding2()
                    
                    onboarding3()

                    

              }.tabViewStyle(PageTabViewStyle())
                .background(Color(red: 0.955, green: 0.945, blue: 0.954)).edgesIgnoringSafeArea(.all)
         */   //.padding(.top, 200)
        GeometryReader{ geo in
            NavigationView {
                //Backgraound BEGIN
                ZStack {
                    Image("s").resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width , height: geo.size.height, alignment: .center)
                    //Backgraound END
                 
                                
                    VStack(alignment: .leading) {
                        
                    
                  
                        Form{
                            
                            
                           List {
                                ForEach(card) { card in
                                     NavigationLink(destination: Main(card1: card)) {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 6) {
                                                Text(card.name ?? "null")
                                                Text(card.age ?? "nell")
                                                Text(card.chronicMedicalConditions ?? "null")
                                                Text(card.medicationName ?? "null" )
                                                Text(card.doses ?? "")
                                                Text(card.schedules ?? "null" )
                                                Text(card.phone1 ?? "null")
                                                Text(card.phone2 ?? "null")
                                                
                                            }
                                            Spacer()
                                            
                                        }
                                    }
                               }
                                .onDelete(perform: deleteData)
                            }
                        }
                    }
                    .navigationTitle("")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                showingAddView.toggle()
                            } label: {
                                Label("Add data", systemImage: "plus.circle")
                            }.tint(.white)
                        }
                      
                    }
                    .sheet(isPresented: $showingAddView) {
                        AdData()
                    }
                }
                
            }
            
        } 
        
    }
    
    private func deleteData(offsets: IndexSet) {
        withAnimation {
            offsets.map { card[$0] }
                .forEach(managedObjContext.delete)
            
            DataController().save(context: managedObjContext)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

