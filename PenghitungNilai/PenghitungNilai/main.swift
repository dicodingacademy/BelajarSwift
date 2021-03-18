//
//  main.swift
//  PenghitungNilai
//
//  Created by Gilang Ramadhan on 08/12/19.
//  Copyright © 2019 Dicoding Indonesia. All rights reserved.
//

import Foundation

print("Selamat Datang di Dicoding Academy!")

print("----------------------------------")

print("Masukkan total nilai yang akan dinilai", terminator: ": "); let total = readLine() ?? ""

print("----------------------------------")

if let totalItem : Int = Int(total) {
    var allValues = [Int]()
    for index in 1...totalItem {
        print("Masukkanlah item ke \(index)", terminator: ": "); let newItem = Int(readLine() ?? "") ?? 0
        allValues.append(newItem)
    }
    
    print("----------------------------------")
    
    var sum :Int = 0
    for (_, value) in allValues.enumerated() {
        sum += value
    }
    
    let average = sum / totalItem
    var grade = ""
    
    switch average {
    case 0...40:
        grade = "E";
        break
    case 41...50:
        grade = "D";
        break
    case 51...60:
        grade = "C";
        break
    case 61...70:
        grade = "C+";
        break
    case 71...80:
        grade = "B";
        break
    case 81...90:
        grade = "B+";
        break
    case 91...100:
        grade = "A";
        break
    default:
        grade = "Tidak valid";
    }
    
    if grade != "Tidak valid" {
        print("Anda mendapatkan Grade nilai \(grade) dari \(total) nilai yang ada. \nAnda mendapatkan total nilai \(sum) dengan rata-rata \(average).")
    }else{
        print("Nilai tidak Valid")
    }
    
} else {
    print("Input tidak valid")
}
print("----------------------------------")
