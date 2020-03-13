//
//  Milkis.swift
//  VendingMachineApp
//
//  Created by delma on 2020/03/07.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation
class Milkis: Soda {
    private var milkRatio: Double
    let milkRatioString = "milkRatio"
    
    init(manufacturer: String, brand: String, capacity: Int, price: Money, name: String, manufacturedDate: Date, expirationDate: Date, sugarRatio: SugarRatio, temperature: Int, milkRatio: Double) {
        self.milkRatio = milkRatio
        super.init(manufacturer: manufacturer, brand: brand, capacity: capacity, price: price, name: name, manufacturedDate: manufacturedDate, expirationDate: expirationDate, sugarRatio: sugarRatio, temperature: temperature)
    }
    
    required init?(coder: NSCoder) {
        self.milkRatio = coder.decodeDouble(forKey: milkRatioString)
        super.init(coder: coder)
    }
    
    override func encode(with coder: NSCoder) {
        super.encode(with: coder)
        coder.encode(self.milkRatio, forKey: milkRatioString)
    }
}
