//
//  main.swift
//  MemberDicoding
//
//  Created by Gilang Ramadhan on 29/12/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

// MARK: Mendapatkan input dari pengguna.
func getInputString(message: String) -> String {
  print(message, terminator: " : ")
  return readLine() ?? ""
}

// MARK: Mendapatkan input dari pengguna dengan tipe data Integer.
func getInputInt(message: String) -> Int {
  return Int(getInputString(message: message)) ?? 0
}

// MARK: Protocol PersonProtocol
protocol PersonProtocol {
  var firstName: String { get set }
  var lastName: String { get set }
  var address: String { get set }
  func fullName() -> String
}

// MARK: Mengimplementasikan Person Protocol ke Class Person
class Person: PersonProtocol {
  var firstName: String
  var lastName: String
  var address: String
  init(firstName: String, lastName: String, address: String) {
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

// MARK: Protocol StudentProtocol
protocol StudentProtocol {
  var school: String { get set }
  func getInformation() -> String
}

// MARK: Mengimplementasikan StudentProtocol dan Person ke kelas Stundent.
class Student: Person, StudentProtocol {
  var school: String = ""

  func getInformation() -> String {
    return "Perkenalkan nama saya \(fullName()), saya sekolah di \(school).\nMari belajar bersama!"
  }
}

print("Selamat datang di aplikasi Dicoding Member!")
print("--------------------------------------")

// MARK: Mendapatkan input dari pengguna
let firstName = getInputString(message: "Masukkan nama depan kamu")
let lastName = getInputString(message: "Masukkan nama belakang kamu")
let address = getInputString(message: "Masukkan alamat kamu")
let school = getInputString(message: "Masukkan nama sekolah/kampus kamu")

// MARK: Menginisialisasi kelas Student
let member = Student(firstName: firstName, lastName: lastName, address: address)
member.school = school
print("--------------------------------------")

// MARK: Mendapatkan detail informasi siswa.
print(member.getInformation())
print("--------------------------------------")
print("Terima kasih, selamat datang kembali!")
