//
//  Operation.swift
//  BlockChainStageOne
//
//  Created by Denis Sapalov on 28.11.2022.
//

import Foundation

protocol OperationProtocol {
    func verifyOperation(operation: Operation) -> Bool
}

final class Operation {
    // TODO: re-check - inconsistance wit spec - in Account::createPaymentOp absent sender param for Operation constructor
    var amount: Int
    var signature: Data!
    var sender: Account?
    var receiver: Account!

    init(sender: Account?, receiver: Account, amount: Int, signature: Data){
        self.sender = sender
        self.receiver = receiver
        self.amount = amount
        self.signature = signature
    }
}

extension Operation: OperationProtocol {
   
    
    func verifyOperation(operation: Operation) -> Bool {
        return !(operation.amount > self.amount)
    }
    
}
