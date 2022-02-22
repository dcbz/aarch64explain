//
//  InstructionList.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 2/27/21.
//

import SwiftUI

struct InstructionList: View {
    @State private var search: String = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                TextField(
                    "Search",
                     text: $search
                ).padding(.all)
                List(instructions.sorted { $0.heading < $1.heading }.filter { search == "" ||  $0.heading.contains(search.uppercased())}, id: \.id) { instruction in
                    NavigationLink(destination: InstructionDetails(instruction:instruction)) {
                        InstructionRow(instruction: instruction)
                    }
                }.navigationBarTitle(
                    Text("Instructions")
                )
            }
        }
    }
}




struct InstructionList_Previews: PreviewProvider {
    static var previews: some View {
        InstructionList()
    }
}
