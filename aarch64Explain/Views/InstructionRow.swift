//
//  InstructionRow.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 2/27/21.
//

import SwiftUI

struct InstructionRow: View {
    var instruction: Instruction
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Text(instruction.heading)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }.padding(.trailing).frame(minWidth: 0, maxWidth: .infinity)
            VStack {
                HStack {
                    Text(instruction.brief)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }.frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}

struct InstructionRow_Previews: PreviewProvider {
    static var previews: some View {
        InstructionRow(instruction: instructions[1])
    }
}
