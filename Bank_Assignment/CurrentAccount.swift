//
//  CurrentAccount.swift
//  Bank_Assignment
//
//  Created by E5000855 on 26/06/24.
//

import Foundation

class CurrentAccount: BankAccount {
    // Properties
    var overdraftLimit: Double
    // Initializer
    init(accountNumber: String, initialBalance: Double, overdraftLimit: Double) {
        self.overdraftLimit = overdraftLimit
        super.init(accountNumber: accountNumber, initialBalance: initialBalance)
    }
    // Overriding Withdraw Method
    override func withdraw(amount: Double) {
        if balance - amount < -overdraftLimit {
            print("Insufficient balance")
        } else {
            balance -= amount
            print("Withdrawal successful")
        }
    }
}
