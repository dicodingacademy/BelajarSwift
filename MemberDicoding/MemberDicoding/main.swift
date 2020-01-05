//
//  main.swift
//  MemberDicoding
//
//  Created by Gilang Ramadhan on 29/12/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

func getInputString(message: String) -> String{
    print(message, terminator: " : ");
    return readLine() ?? ""
}

func getInputInt(message: String) -> Int{
    return Int(getInputString(message: message)) ?? 0
}

protocol PersonProtocol {
    var firstName : String {set get}
    var lastName  : String {set get}
    var address  : String {set get}
    func fullName() -> String
}

class Person : PersonProtocol{
    var firstName : String
    var lastName : String
    var address : String
    init(firstName : String, lastName : String, address : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
    
    func fullName() -> String {
        var parts: [String] = []
        parts += [firstName]
        parts += [lastName]
        return parts.joined(separator: " ")
    }
}

protocol StudentProtocol {
    var school : String {set get}
    func getInformation() -> String
}

class Student : Person, StudentProtocol {
    var school: String = ""
    
    func getInformation() -> String {
        return "Perkenalkan nama saya \(fullName()), saya sekolah di \(school).\nMari belajar bersama!"
    }
}

print("Selamat datang di aplikasi Dicoding Member!")
print("--------------------------------------")

let firstName = getInputString(message: "Masukkan nama depan kamu")
let lastName = getInputString(message: "Masukkan nama belakang kamu")
let address = getInputString(message: "Masukkan alamat kamu")
let school = getInputString(message: "Masukkan nama sekolah / kampus kamu")

let member = Student(firstName: firstName, lastName: lastName, address: address)
member.school = school

print("--------------------------------------")

print(member.getInformation())

print("--------------------------------------")
print("Terima kasih, selamat datang kembali!")
