//
//  SavingsAccount.swift
//  Bank_Assignment
//
//  Created by E5000855 on 26/06/24.
//

import Foundation


class SavingsAccount: BankAccount {
    // Properties
    var interestRate: Double
    // Initializer
    init(accountNumber: String, initialBalance: Double, interestRate: Double) {
        self.interestRate = interestRate
        super.init(accountNumber: accountNumber, initialBalance: initialBalance)
    }
    // Methods
    func applyInterest() {
        balance += balance * interestRate
        print("Interest applied")
    }
    // Overriding Withdraw Method
    override func withdraw(amount: Double) {
        if balance - amount < 100 {
            print("Insufficient balance")
        } else {
            balance -= amount
            print("Withdrawal successful")
        }
    }
}
