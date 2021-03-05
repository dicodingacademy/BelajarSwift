//
//  main.swift
//  DataDiri
//
//  Created by Gilang Ramadhan on 24/10/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

// Kita akan membuat form data diri.
print("Selamat Datang di Dicoding Academy")
print("----------------------------------")

// Kode ini digunakan untuk memasukkan input dari pengguna.
print("Masukkan nama depan Anda:"); let firstName = readLine()!
print("Masukkan nama belakang Anda:"); let lastName = readLine()!
print("Masukkan umur Anda:"); let age = readLine()!
print("Masukkan alamat Anda:"); let address = readLine()!
print("Masukkan pekerjaan Anda:"); let job = readLine()!

let fullName = firstName + " " + lastName

print("----------------------------------")

// Ini adalah output dari program yang Anda buat.
print("Apakah kalian tahu \(fullName)?")
print("\(firstName) adalah seorang \(job).")
print("Saat ini ia berumur \(age) dan bertempat tinggal di \(address).")

print("----------------------------------")
