//
//  Bank_AssignmentTests.swift
//  Bank_AssignmentTests
//
//  Created by E5000855 on 26/06/24.
//

import XCTest
@testable import Bank_Assignment

final class Bank_AssignmentTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testDeposit() throws {
           let account = BankAccount(accountNumber: "123456", initialBalance: 1000)
           account.deposit(amount: 500)
           XCTAssertEqual(account.balance, 1500, "Balance should be 1500 after depositing 500")
       }

       func testWithdraw() throws {
           let account = BankAccount(accountNumber: "123456", initialBalance: 1000)
           account.withdraw(amount: 300)
           XCTAssertEqual(account.balance, 700, "Balance should be 700 after withdrawing 300")
       }

       func testSavingsAccountInterest() throws {
           let savingsAccount = SavingsAccount(accountNumber: "123456", initialBalance: 1000, interestRate: 0.05)
           savingsAccount.applyInterest()
           XCTAssertEqual(savingsAccount.balance, 1050, "Balance should be 1050 after applying 5% interest")
       }

    func testSavingsAccountWithdraw() throws {
        let savingsAccount = SavingsAccount(accountNumber: "123456", initialBalance: 1000, interestRate: 0.05)
        savingsAccount.withdraw(amount: 950)
        XCTAssertEqual(savingsAccount.balance, 1000, "Balance should remain 1000 due to insufficient funds for the withdrawal")
    }
    
       func testCurrentAccountWithdraw() throws {
           let currentAccount = CurrentAccount(accountNumber: "123456", initialBalance: 1000, overdraftLimit: 500)
           currentAccount.withdraw(amount: 1300)
           XCTAssertEqual(currentAccount.balance, -300, "Balance should be -300 after overdrawing 300 within limit")
       }

       func testCurrentAccountOverdraftLimit() throws {
           let currentAccount = CurrentAccount(accountNumber: "123456", initialBalance: 1000, overdraftLimit: 500)
           currentAccount.withdraw(amount: 1600)
           XCTAssertEqual(currentAccount.balance, 1000, "Balance should remain 1000 due to insufficient overdraft limit")
       }

    func testDepositNegativeAmount() throws {
        let account = BankAccount(accountNumber: "123456", initialBalance: 1000)
        account.deposit(amount: -500)
        XCTAssertEqual(account.balance, 1000, "Balance should remain 1000 after trying to deposit a negative amount")
    }

    func testWithdrawNegativeAmount() throws {
        let account = BankAccount(accountNumber: "123456", initialBalance: 1000)
        account.withdraw(amount: -300)
        XCTAssertEqual(account.balance, 1000, "Balance should remain 1000 after trying to withdraw a negative amount")
    }

    func testSavingsAccountMultipleInterestApplications() throws {
        let savingsAccount = SavingsAccount(accountNumber: "123456", initialBalance: 1000, interestRate: 0.05)
        savingsAccount.applyInterest()
        savingsAccount.applyInterest()
        XCTAssertEqual(savingsAccount.balance, 1102.5, "Balance should be 1102.5 after applying 5% interest twice")
    }

    func testCurrentAccountOverdrawBeyondLimit() throws {
        let currentAccount = CurrentAccount(accountNumber: "123456", initialBalance: 1000, overdraftLimit: 500)
        currentAccount.withdraw(amount: 2000)
        XCTAssertEqual(currentAccount.balance, 1000, "Balance should remain 1000 due to overdraft limit preventing withdrawal")
    }

    func testZeroBalanceWithdrawal() throws {
        let account = BankAccount(accountNumber: "123456", initialBalance: 0)
        account.withdraw(amount: 100)
        XCTAssertEqual(account.balance, 0, "Balance should remain 0 due to insufficient funds")
    }

    func testZeroInitialBalance() throws {
        let account = BankAccount(accountNumber: "123456", initialBalance: 0)
        XCTAssertEqual(account.balance, 0, "Initial balance should be 0")
    }
    
    func testNegativeInitialBalance() throws {
        let account = BankAccount(accountNumber: "123456", initialBalance: -100)
        XCTAssertEqual(account.balance, -100, "Initial balance should be -100")
    }
    
    func testSavingsAccountNegativeInterestRate() throws {
        let savingsAccount = SavingsAccount(accountNumber: "123456", initialBalance: 1000, interestRate: -0.05)
        savingsAccount.applyInterest()
        XCTAssertEqual(savingsAccount.balance, 950, "Balance should be 950 after applying -5% interest")
    }


}
