//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func numIslands(_ grid: [[Character]]) -> Int {
    //check
    
    let rows = grid.count
    let columns = grid[0].count
    //double for
    var visited = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    for i in 0 ..< rows {
        for j in 0 ..< columns {
            if grid[i][j] == "1" {
                bfs(i: i, j: j, grid: grid, visited: visited)
            }
        }
    }
    
    return 0
}

private func bfs(i: Int, j: Int, grid: [[Character]], visited: Array<[Int]>) {
    let rows = grid.count
    let columns = grid[0].count
    if i >= 0 && i < rows && j >= 0 && j < columns && grid[i][j] != "1" {
        let dx = [0, 1, -1, 0]
        let dy = [1, 0, 0, -1]
        grid[i][j] = "0"
        for k in 0 ..< 4 {
            let x = dx[k] + i
            let y = dy[k] + j
            bfs(i: x, j: y, grid: grid)
        }
    }
}
