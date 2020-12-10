import Foundation

struct Calculations {
    
    private enum Functions {
        case unaryOperation((Double) -> Double)
        case binaryOperation((Double, Double) -> Double)
        case reset
        case equal
    }
    
    var accumulator: Double?
    
    private var operation: Dictionary<String, Functions> = [
        "±" : Functions.unaryOperation({ -$0 }),
        //"%" : Functions.unaryOperation( { $0 / 100}),
        //"," : Functions.unaryOperation,
        "×" : Functions.binaryOperation({ $0 * $1 }),
        "÷" : Functions.binaryOperation({ $0 / $1}),
        "-" : Functions.binaryOperation({ $0 - $1}),
        "+" : Functions.binaryOperation({ $0 + $1}),
        "=" : Functions.equal,
        "AC" : Functions.reset
    ]
    
    
    func performOperation() {
        
    }
    
    
    
}
