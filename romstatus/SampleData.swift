//
//  SampleData.swift
//  romstatus
//
//  Created by Martin Saue Winther on 14/09/2019.
//  Copyright © 2019 akademiet. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generateRoomData() -> [Room] {
        return [
            Room(number: "111", name: "Hemmingway", status: "Ledig", air: "Høy"),
            Room(number: "112", name: "Kafka", status: "Ledig", air: "Middels"),
            Room(number: "113", name: "Whatever", status: "Opptatt", air: "Høy")
            ]
    }
}
