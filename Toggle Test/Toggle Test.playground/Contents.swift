import UIKit


var nonZero = true
var timer:Int
timer = 0

func timerCounter() {
if nonZero {
    timer+=1
    if timer == 5 {
        nonZero.toggle()
    }
    print(timer)
    timerCounter()
}
}
timerCounter()
