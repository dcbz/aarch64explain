//
//  InstructionDetails.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 2/27/21.
//

import SwiftUI

/*
 struct Instruction: Hashable, Codable, Identifiable {
     var id: Int
     var heading: String
     var brief: String
     var para: String
     var asmtemplate: String
     var explanations: [String: String]
 }
 */

struct InstructionDetails: View {
    var instruction: Instruction
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(instruction.heading)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.vertical)
                }.overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.blue, lineWidth: 4)
                )        .padding(.horizontal)
                Text("Description:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .multilineTextAlignment(.leading)
                Text(instruction.para)
                    .padding(.all)
                    .multilineTextAlignment(.leading)
                    //.frame(idealHeight:.infinity)
                    .fixedSize(horizontal: false, vertical: true)
                if !instruction.encodings.isEmpty {
                    Text("Encodings:")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    ForEach (0..<instruction.encodings.count) { i in
                        ASMtemplate(encoding:instruction.encodings[i])
                    }.padding(.bottom)
                    Spacer()
                }
                if(!instruction.explanations.isEmpty) {
                    Text("Explanations:")
                        .font(.title2)
                        .fontWeight(.bold).padding(.vertical)
                    Spacer()
                    ForEach(instruction.explanations.sorted(by: <), id: \.key) { key, value in
                            Explanation(Key: key, Value: value)
                    }
                }
            }.ignoresSafeArea(edges: .top)
            
        }
    }
}

struct InstructionDetails_Previews: PreviewProvider {
    static var previews: some View {
        InstructionDetails(instruction: instructions[201])
            .padding()
    }
}
