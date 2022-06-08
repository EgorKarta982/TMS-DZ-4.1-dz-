//
//  Manager.swift
//  TMS DZ 4.1 (dz)
//
//  Created by Егор on 08.06.2022.
//

import Foundation


class Manager {
    static let shared = Manager()
    
    private init () {}
    
    // количесвто в покупке
    var countStaropramen: Int = 0
    var countBud: Int = 0
    var countSidr: Int = 0
    
    // остаток
    var remainderStaropramen = 100
    var remainderBud = 100
    var remainderSidr = 100
    
    //  сумма за день проданных
    var profit: Double = 0
    
    // меню пива
    let staropramen = Beer(name: "Staropramen", price: 2)
    let bud = Beer(name: "Bud", price: 1.8)
    let sidr = Beer(name: "Sidr", price: 4)
    
    
    // Кнопки Плюс +
    func plustStaropramen(){
        if remainderStaropramen == 0 {
            return
        }
        countStaropramen += 1
        remainderStaropramen -= 1
    }
    
    func plusBud() {
        if remainderBud == 0 {
            return
        }
        countBud += 1
        remainderBud -= 1
    }
    
    func plusSidr(){
        if remainderSidr == 0 {
            return
        }
        countSidr += 1
        remainderSidr -= 1
    }
    
    // Кнопки минус
    
    func minusStaropramn(){
        if countStaropramen == 0 {
            return
        }
        countStaropramen -= 1
        remainderStaropramen += 1
    }
    
    func minusBud(){
        if countBud == 0 {
            return
        }
        countBud -= 1
        remainderBud += 1
    }

    func minusSidr(){
        if countSidr == 0 {
            return
        }
        countSidr -= 1
        remainderSidr += 1
    }
    
    
}
