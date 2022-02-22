//
//  ASMtemplate.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 3/6/21.
//

import SwiftUI

struct ASMtemplate: View {
    var encoding: String
    var body: some View {
        HStack {
            Text(encoding)
                .padding(.all)
            
        }.overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 4)
        ).padding(.horizontal)
    }
}

struct ASMtemplate_Previews: PreviewProvider {
    static var previews: some View {
        ASMtemplate(encoding: instructions[0].encodings[0])
    }
}
