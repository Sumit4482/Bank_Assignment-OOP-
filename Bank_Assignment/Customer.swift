//
//  Customer.swift
//  Bank_Assignment
//
//  Created by E5000855 on 26/06/24.
//

import Foundation

class Customer {
    var name: String
    var account: BankAccount
    init(name: String, account: BankAccount) {
        self.name = name
        self.account = account
    }
}
