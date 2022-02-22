//
//  ContentView.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 2/26/21.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @State private var recognizedText = "Tap button to start scanning"
    @State var ARModeOn: Bool = false
    var body: some View {
        
        VStack {
            Spacer()
            HStack(alignment: .top) {
                Text("   ")
                Image("processor")
                VStack {
                    Text("aarch64Explain")
                        .font(.title2)
                    .fontWeight(.bold)
                }.padding(.top)
                    Spacer()
                    Button(action: {
                        ARModeOn.toggle()
                        
                    }) {
                        Text("AR")
                            .fontWeight(.bold)
                            .font(.caption)
                            .background(Color.blue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.blue, lineWidth: 5)
                            )
                    }
                Text("  ") // cheating?
            }
            .padding(.vertical)
            if(!ARModeOn) {
                InstructionList()
            } else {
                Swordfish(recognizedText: self.$recognizedText)
            }
        }
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
