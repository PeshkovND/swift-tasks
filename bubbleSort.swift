func bubbleSort<T:Comparable> (_ arr: inout [T]){
    for i in 0..<arr.count{
        for j in 0..<arr.count-i-1{
            if arr[j] > arr[j + 1]{
                var buf = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = buf
            }
        }
    }
}

var intData:[Int] = [-124, 25, 9, 0, -50, 6]
bubbleSort(&intData)
print(intData)

var doubleData:[Double] = [-124.35, 2.5, 9.9, 0, -50.86, 6.75]
bubbleSort(&doubleData)
print(doubleData)

var stringData:[String] = ["a", "z", "abc", "cab"]
bubbleSort(&stringData)
print(stringData)
