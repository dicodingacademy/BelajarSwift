//
//  main.swift
//  DaftarBuah
//
//  Created by Gilang Ramadhan on 10/12/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

// MARK: Menampung kumpulan buah.
var listFruits = [String]()
var isRunning = true

// MARK: Mendapatkan input dari pengguna.
func getInput(message: String) -> String? {
  print(message, terminator: ": ")
  return readLine()
}

// MARK: Mendapatkan input dari pengguna dengan tipe data Int.
func getInputInt(message: String) -> Int? {
  if let inputString = getInput(message: message) {
    return Int(inputString)
  } else {
    return 0
  }
}

// MARK: Menampilkan semua daftar buah.
func showAllFruits() {
  if listFruits.isEmpty {
    print("Belum ada item di dalam daftar")
  } else {
    for (index, value) in listFruits.enumerated() {
      print("[\(index + 1)] \(value)")
    }
  }
}

// MARK: Memasukkan nama buah.
func insertFruit() {
  if let name = getInput(message: "Masukkan nama buah") {
    listFruits.append(name)
  } else {
    insertFruit()
    print("Input tidak valid")
  }
}

// MARK: Mengubah nama buah berdasarkan posisi.
func editFruit() {
  showAllFruits()
  print("----------------------------------")
  if let position = getInputInt(message: "Pilih posisi buah yang akan diganti") {
    if position <= listFruits.count && position > 0 {
      if let name = getInput(message: "Masukkan nama buah") {
        listFruits[position-1] = name
      }
    } else {
      showMenu()
    }
  } else {
    editFruit()
    print("Input tidak valid")
  }
}

// MARK: Menghapus buah berdasarkan posisi.
func deleteFruit() {
  showAllFruits()
  if let position = getInputInt(message: "Pilih posisi buah yang akan dihapus") {
    if position <= listFruits.count && position > 0 {
      listFruits.remove(at: position-1)
    } else {
      showMenu()
    }
  } else {
    deleteFruit()
    print("Input tidak valid")
  }
}

// MARK: Menampilkan menu.
func showMenu() {
  print("Selamat Datang di Dicoding Market")
  print("---------------MENU---------------")
  print("[1] Tampilkan semua buah")
  print("[2] Tambah item buah")
  print("[3] Ubah item buah")
  print("[4] Hapus item buah")
  print("[5] Keluar")
  if let position = getInputInt(message: "Silakan pilih menu di atas"), position <= 5 && position > 0 {
    print("----------------------------------")
    switch position {
    case 1:
      showAllFruits()
    case 2:
      insertFruit()
    case 3:
      editFruit()
    case 4:
      deleteFruit()
    case 5:
      isRunning = false
      print("Terima kasih, silakan datang kembali!")
    default:
      print("Pilihan Anda salah")
    }
  } else {
    print("Item menu tidak valid")
  }
  print("----------------------------------")
}

// MARK: Menjalankan program.
while isRunning {
    showMenu()
}
