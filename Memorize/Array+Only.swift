//
//  Array+Only.swift
//  Memorize
//
//  Created by Idopter Labs on 08/05/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
