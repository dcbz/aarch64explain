//
//  Instruction.swift
//  aarch64Explain
//
//  Created by Guybrush Threepwood on 2/27/21.
//

import Foundation

struct Instruction: Hashable, Codable, Identifiable {
    var id: Int
    var heading: String
    var brief: String
    var para: String
    var asmtemplate: String
    var explanations: [String: String]
    var encodings: [String]
}

