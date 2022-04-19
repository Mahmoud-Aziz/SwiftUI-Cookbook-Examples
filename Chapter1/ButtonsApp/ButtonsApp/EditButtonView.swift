//
//  EditButtonView.swift
//  ButtonsApp
//
//  Created by Mahmoud Aziz on 17/04/2022.
//

import SwiftUI

struct EditButtonView: View {
    @State private var animals = ["cats","dogs","goats"]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }.onDelete(perform: removeAnimal)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("edit button view"), displayMode: .inline)
        }
    }
    func removeAnimal(at offset: IndexSet) {
        animals.remove(atOffsets: offset)
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
