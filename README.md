# Bank Assignment
An Assignment that is given in the training

### **Test Coverage (100% excluding app and scene delegate)**
![image](https://github.com/Sumit4482/Bank_Assignment-OOP-/assets/61246873/5dadc4d8-4d37-4388-b971-5bfc1c84d473)

### **Diagram**
![image](https://github.com/Sumit4482/Bank_Assignment-OOP-/assets/61246873/efcf29e1-d7e7-4911-b3c8-6e8bd842baff)

### **Objective**

Create a set of classes in Swift to represent a simple banking system. This assignment will help you demonstrate your understanding of inheritance, method overloading, method overriding, computed properties, initializers, and deinitializers.

### **Assignment Details**

**Classes to Create**:

1. **BankAccount**
2. **SavingsAccount** (inherits from BankAccount)
3. **CurrentAccount** (inherits from BankAccount)

**Requirements**:

1. **BankAccount Class**:
    - Properties:
        - accountNumber: String
        - balance: Double (computed property)
    - Initializers:
        - Designated initializer that takes accountNumber and initialBalance.
    - Methods:
        - deposit(amount: Double)
        - withdraw(amount: Double) (virtual method to be overridden in subclasses)
    - Deinitializer:
        - Print a message indicating the account is being closed.
2. **SavingsAccount Class**:
    - Inherits from BankAccount
    - Additional Properties:
        - interestRate: Double
    - Initializers:
        - Designated initializer that takes accountNumber, initialBalance, and interestRate.
    - Methods:
        - applyInterest()
        - Override withdraw(amount: Double) to impose a condition: withdraw only if balance remains above a minimum limit ($100).
    - Computed Properties:
        - balance to include interest.
3. **CurrentAccount Class**:
    - Inherits from BankAccount
    - Additional Properties:
        - overdraftLimit: Double
    - Initializers:
        - Designated initializer that takes accountNumber, initialBalance, and overdraftLimit.
    - Methods:
        - Override withdraw(amount: Double) to allow overdraft up to the overdraftLimit.
    - Computed Properties:
        - balance to reflect the effective available balance considering the overdraft.

**Instructions**:

- Implement all required classes and methods.
- Demonstrate method overloading by creating a method statement in BankAccount that shows account details with different formats.
- Provide an example of how these classes would be used in a main program.
