//
//  BankAccount.swift
//  SwiftDSA
//
//  Created by Vikram on 07/07/26.
//

import SwiftUI

actor BankAccount {

    var balance = 1000

    func deposit(_ amount: Int) {
        balance += amount
        print("Balance:", balance)
    }
}

struct BankAccountView: View {

    let account = BankAccount()

    var body: some View {

        Button("Deposit") {

            Task {

                await withTaskGroup(of: Void.self) { group in

                    group.addTask {
                        await account.deposit(500)
                    }

                    group.addTask {
                        await account.deposit(300)
                    }

                    group.addTask {
                        await account.deposit(200)
                    }
                }
            }
        }
    }
}

#Preview {
    BankAccountView()
}
