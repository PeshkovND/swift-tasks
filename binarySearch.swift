func binarySearch(_ arr: [Int], _ taskItem: Int) -> Int? {
    var lowerBorder = 0;
    var upperBorder = arr.count - 1

    while lowerBorder <= upperBorder {
        let currentIdx = (lowerBorder + upperBorder) / 2
        if (arr[currentIdx] == taskItem) { return currentIdx } 
        else {
            if (arr[currentIdx] > taskItem) { upperBorder = currentIdx - 1 }
            else { lowerBorder = currentIdx + 1 }
        }
    }
    return nil
}

var data = Array (1...11)
if let answer = binarySearch(data, 11) { print(answer) }
else { print("Element not found") }