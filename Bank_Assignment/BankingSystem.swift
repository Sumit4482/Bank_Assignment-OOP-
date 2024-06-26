//
//  BankingSystem.swift
//  Bank_Assignment
//
//  Created by E5000855 on 26/06/24.
//

import Foundation

class BankAccount {
    // Properties
    var accountNumber: String
    // Computed Property
    var balance: Double {
        didSet {
            print("Balance is \(balance)")
        }
    }
    // Initializer
    init(accountNumber: String, initialBalance: Double) {
        self.accountNumber = accountNumber
        self.balance = initialBalance
    }
    // Methods
    func deposit(amount: Double) {
        if amount <= 0 {
            print("Cannot deposit a negative or zero amount")
        } else {
            balance += amount
        }
    }
    func withdraw(amount: Double) {
        if amount <= 0 {
            print("Cannot withdraw a negative or zero amount")
        } else if balance - amount < 0 {
            print("Insufficient funds. Cannot withdraw \(amount)")
        } else {
            balance -= amount
        }
    }
    // Deinitializer
    deinit {
        print("\(accountNumber) is being closed")
    }
}

