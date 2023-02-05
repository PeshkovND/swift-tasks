func quickSort<T:Comparable> (_ arr: [T])->[T]{
    guard arr.count > 1 else { return arr }
    let Q = arr[arr.count/2]
    var lessQ:[T] = []
    var moreQ:[T] = []
    var equalsQ:[T] = []
    for elem in arr {
        if elem < Q { lessQ.append(elem) }
        else if elem > Q { moreQ.append(elem) }
        else { equalsQ.append(elem)} 
    }
    return quickSort(lessQ) + equalsQ + quickSort(moreQ)
}

var intData:[Int] = [-124, 25, 9, 0, -50, 6]
print(quickSort(intData))

var doubleData:[Double] = [-124.35, 2.5, 9.9, 0, -50.86, 6.75]
print(quickSort(doubleData))

var stringData:[String] = ["a", "z", "abc", "cab"]
print(quickSort(stringData))
