//
//  main.swift
//  ResepMakanan
//
//  Created by Gilang Ramadhan on 28/11/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

import Foundation

print("Selamat Datang di Dicoding Resto!")
print("Mari membuat makanan!")

// MARK: Memasukkan resep dan jumlah item dalam resep tersebut.
print("----------------------------------")
print("Apa yang ingin Anda buat?"); let food = readLine() ?? ""
print("Masukkan jumlah item yang ingin Anda masukkan", terminator: ": "); let newItem = readLine() ?? "0"
print("----------------------------------")

// MARK: Mengonversi jumlah item yang perlu dimasukkan.
if let totalItem: Int = Int(newItem) {
  var recipe = [String]()

  // MARK: Memasukkan item ke dalam resep.
  for index in 1...totalItem {
    print("Masukkanlah item ke \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
    recipe.append(newItem)
  }

  // MARK: Memasukkan waktu yang dibutuhkan untuk membuat resep.
  print("----------------------------------")
  print("Berapa lama proses memasak dilakukan?"); let time = readLine() ?? ""
  print("----------------------------------")

  // MARK: Mengurutkan Item Resep.
  recipe.sort()

  // MARK: Menampilkan hasil resep.
  print("Anda akan membuat \(food) selama \(time) dengan resep:")
  for (index, value) in recipe.enumerated() {
    print("\(index + 1). \(value)")
  }
  
} else {

  // MARK: Menampilkan Error ketika input tidak valid.
  print("Input tidak valid!")

}
print("----------------------------------")
