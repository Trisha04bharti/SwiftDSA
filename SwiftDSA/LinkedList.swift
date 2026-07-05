//
//  LinkedList.swift
//  SwiftDSA
//
//  Created by Vikram on 05/07/26.
//

class ListNode<T> {
    var val: T
    var next: ListNode?
    
    init(val: T){
        self.val = val
    }
}

//insert at frist node in Linked List

func insertAtFirst<T>(_ val: T, head: inout ListNode<T>?) {
    let newNode = ListNode(val: val)
    newNode.next = head
    head = newNode
}
