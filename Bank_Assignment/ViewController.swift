//
//  ViewController.swift
//  Bank_Assignment
//
//  Created by E5000855 on 26/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Create customers with their accounts
        let cust1 = Customer(name: "Sumit", account: SavingsAccount(accountNumber: "838306572115", initialBalance: 1000, interestRate: 0.05))
        let cust2 = Customer(name: "Atharva", account: CurrentAccount(accountNumber: "1234556", initialBalance: 2000, overdraftLimit: 500))

        // Demonstrate deposit and withdrawal
        cust1.account.deposit(amount: 500)
        cust1.account.withdraw(amount: 1000)

        cust2.account.deposit(amount: 500)
        cust2.account.withdraw(amount: 1000)

    }


}

