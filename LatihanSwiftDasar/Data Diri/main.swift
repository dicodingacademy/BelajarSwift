//
//  main.swift
//  Data Diri
//
//  Created by Gilang Ramadhan on 31/05/22.
//

import Foundation

// MARK: Membuat form data diri.
print("Selamat Datang di Dicoding Academy")
print("----------------------------------")

// MARK: Memasukkan nilai dari pengguna.
print("Masukkan nama depan Anda:"); let firstName = readLine()!
print("Masukkan nama belakang Anda:"); let lastName = readLine()!
print("Masukkan umur Anda:"); let age = readLine()!
print("Masukkan alamat Anda:"); let address = readLine()!
print("Masukkan pekerjaan Anda:"); let job = readLine()!

// MARK: Menggabungkan nama depan dan nama belakang.
let fullName = firstName + " " + lastName
print("----------------------------------")

// MARK: Mencetak program yang Anda buat ke dalam Terminal.
print("Apakah kalian tahu \(fullName)?")
print("\(firstName) adalah seorang \(job).")
print("Saat ini ia berumur \(age) dan bertempat tinggal di \(address).")
print("----------------------------------")
