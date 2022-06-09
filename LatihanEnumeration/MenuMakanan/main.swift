//
//  main.swift
//  MenuMakanan
//
//  Created by Gilang Ramadhan on 18/12/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

// MARK: Mendapatkan input dari pengguna.
func getInput(message: String) -> String? {
  print(message, terminator: " : ")
  return readLine()
}

// MARK: Mendapatkan input dari pengguna dengan tipe data Integer.
func getInputInt(message: String) -> Int? {
  if let inputString = getInput(message: message) {
    return Int(inputString)
  } else {
    return nil
  }
}

// MARK: Enumeration Makanan berat
enum HeavyMeal: Int, CaseIterable {
  case nasiGoreng = 1, indomie, magelangan, nasiKuning, kwetiau, nasiPutih
}

// MARK: Enumeration Makanan Ringan
enum SideDish: Int, CaseIterable {
  case ikan = 1, telur, tempe, tahu, kerupuk
}

// MARK: Enumeration Minuman
enum Drinks: Int, CaseIterable {
  case esTeh = 1, esJeruk, kopi, airPutih
}

// MARK: Menampilkan semua makanan.
func showAllHeavyMeal() {
  var position = 1
  print("Makan berat")
  for heavyMeal in HeavyMeal.allCases {
    print("[\(position)] \(heavyMeal)")
    position += 1
  }
}

// MARK: Menampilkan semua makanan ringan.
func showAllSideDish() {
  var position = 1
  print("Lauk")
  for sideDish in SideDish.allCases {
    print("[\(position)] \(sideDish)")
    position += 1
  }
}

// MARK: Menampilkan semua minuman.
func showAllDrink() {
  var position = 1
  print("Minuman")
  for drink in Drinks.allCases {
    print("[\(position)] \(drink)")
    position += 1
  }
}

// MARK: Menampung informasi makanan, minuman, dan makanan ringan.
var total = 0
var item = ("", "", "")

// MARK: Memasukkan makanan
func inputHeavyMeal() {
  if let position = getInputInt(message: "Pilihlah makanan") {
    if let heavyMeal = HeavyMeal(rawValue: position) {
      switch heavyMeal {
      case .indomie:
        total += 6000
        item.0 = "Indomie"
      case .kwetiau:
        total += 10000
        item.0 = "Kwetiau"
      case .magelangan:
        total += 7000
        item.0 = "Magelangan"
      case .nasiGoreng:
        total += 9000
        item.0 = "Nasi Goreng"
      case .nasiPutih:
        total += 3000
        item.0 = "Nasi Putih"
      case .nasiKuning:
        total += 5000
        item.0 = "Nasi Kuning"
      }
    } else {
      print("Posisi \(position) tidak ditemukan.")
    }
  } else {
    print("Input tidak valid!")
  }
}

// MARK: Memasukkan minuman
func inputSideDish() {
  if let position = getInputInt(message: "Pilihlah lauk") {
    if let sideDish = SideDish(rawValue: position) {
      switch sideDish {
      case .ikan:
        total += 5000
        item.1 = "Ikan"
      case .kerupuk:
        total += 500
        item.1 = "Kerupuk"
      case .tahu:
        total += 1000
        item.1 = "Tahu"
      case .telur:
        total += 3000
        item.1 = "Telur"
      case .tempe:
        total += 1000
        item.1 = "Tempe"
      }
    } else {
      print("Posisi \(position) tidak ditemukan.")
    }
  } else {
    print("Input tidak valid!")
  }
}

// MARK: Memasukkan minuman.
func inputDrinks() {
  if let position = getInputInt(message: "Pilihlah minuman") {
    if let drink = Drinks(rawValue: position) {
      switch drink {
      case .airPutih:
        total += 0
        item.2 = "Air Putih"
      case .esJeruk:
        total += 2500
        item.2 = "Es Jeruk"
      case .esTeh:
        total += 2000
        item.2 = "Es Teh"
      case .kopi:
        total += 3000
        item.2 = "Kopi"
      }
    } else {
      print("Posisi \(position) tidak ditemukan.")
    }
  } else {
    print("Input tidak valid!")
  }
}

// MARK: Menampilkan Menu
func menu() {
  print("Selamat datang di Rumah Makan Dicoding")
  print("--------------------------------------")
  showAllHeavyMeal()
  inputHeavyMeal()
  print("--------------------------------------")
  showAllSideDish()
  inputSideDish()
  print("--------------------------------------")
  showAllDrink()
  inputDrinks()
  print("--------------------------------------")
  print("Anda memilih \(item.0), \(item.1), dan \(item.2) dengan total harga Rp. \(total).")
  print("--------------------------------------")
  print("Terima kasih, selamat datang kembali!")
}

// MARK: Memanggil function menu.
menu()
