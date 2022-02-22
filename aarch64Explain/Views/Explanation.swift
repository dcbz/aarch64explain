//
//  Explanation.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 3/11/21.
//

import SwiftUI

struct Explanation: View {
    var Key: String
    var Value: String
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading) {
                HStack {
                    Text(Key)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }.padding(.trailing).frame(minWidth: 0, maxWidth: .infinity)
            VStack {
                HStack {
                    Text(Value)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }.frame(minWidth: 0, maxWidth: .infinity)
        }
        Spacer()
    }
}

struct Explanation_Previews: PreviewProvider {
    static var previews: some View {
        Explanation(Key: "hello", Value: "World")
    }
}
