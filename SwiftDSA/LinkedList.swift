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

// inserting at position k in LinkedList

func insertAtKthPosition<T>(_ val: T, _ head: ListNode<T>?, _ k: Int ) -> ListNode<T>? {
    if k == 0 {
        return ListNode(val: val)
    }
    
    let newNode = ListNode(val: val)
    newNode.next = insertAtKthPosition(val, head, k-1)
    return newNode
}

func reverseLinkedList(_ head: ListNode?) -> ListNode? {

    var previous: ListNode? = nil
    var current = head

    while current != nil {

        let nextNode = current?.next     // Save next node

        current?.next = previous         // Reverse the link

        previous = current               // Move previous forward
        current = nextNode               // Move current forward
    }

    return previous
}
