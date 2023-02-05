func fibonachi(_ n: Int) -> Int? {
    var answer = 1
    if n < 1 { return nil }
    if n < 3 { return answer }
    var bufs = [1, 1];
    for i in 3...n{
        answer = bufs[0] + bufs[1]
        bufs[0] = bufs[1]
        bufs[1] = answer
    }
    return answer
}

if let answer = fibonachi(22) { print(answer) }
else { print("Invalid value") }
