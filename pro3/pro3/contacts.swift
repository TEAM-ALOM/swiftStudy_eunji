//
//  contacts.swift
//  pro3
//
//  Created by 황은지 on 3/10/24.
//

import Foundation
struct Person {
    var name:String
    var number:String
    var imagename:String
}

var contacts: [Person] = [
    Person(name: "김도형", number: "010-9027-8292", imagename:"😄"),
    Person(name: "김학규", number: "010-9114-5176", imagename:"😁"),
    Person(name: "박근경", number: "010-2841-5753", imagename:"😬"),
    Person(name: "은서우", number: "010-2874-3502", imagename:"😝"),
    Person(name: "이하빈", number: "010-4740-6363", imagename:"😳"),
    Person(name: "이창희", number: "010-6609-5465", imagename:"😎"),
    Person(name: "정성윤", number: "010-8504-6852", imagename:"😅"),
    Person(name: "정수호", number: "010-7535-0604", imagename:"🥸"),
    Person(name: "황은지", number: "010-3005-0165", imagename:"😑"),
]
var my:Person = contacts[8]
