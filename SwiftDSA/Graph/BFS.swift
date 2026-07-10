//
//  BFS.swift
//  SwiftDSA
//
//  Created by Vikram on 10/07/26.
//

import Foundation

func bfs(_ graph: [[Int]], _ start: Int) -> [Int] {
    var visited = Array(repeating: false, count: graph.count)
    var queue: [Int] = []
    var result: [Int] = []

    queue.append(start)
    visited[start] = true

    while !queue.isEmpty {
        let node = queue.removeFirst()
        result.append(node)

        for neighbour in graph[node] {
            if !visited[neighbour] {
                visited[neighbour] = true
                queue.append(neighbour)
            }
        }
    }

    return result
}

// Example
let graph = [
    [1, 2],      // 0
    [0, 3, 4],   // 1
    [0, 5],      // 2
    [1],         // 3
    [1, 5],      // 4
    [2, 4]       // 5
]



func bfsTraversal(_ graph: [[Int]]) -> [Int] {
    let n = graph.count
    var visited = Array(repeating: false, count: n)
    var result: [Int] = []

    for i in 0..<n {
        if !visited[i] {
            var queue: [Int] = [i]
            visited[i] = true

            while !queue.isEmpty {
                let node = queue.removeFirst()
                result.append(node)

                for neighbour in graph[node] {
                    if !visited[neighbour] {
                        visited[neighbour] = true
                        queue.append(neighbour)
                    }
                }
            }
        }
    }

    return result
}
