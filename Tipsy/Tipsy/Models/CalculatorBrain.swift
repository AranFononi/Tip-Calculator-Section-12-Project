
import UIKit

struct CalculatorBrain {
    
    var tipValue : Float?
    
    mutating func tipLabelUpdate(tipLabel: String, zero: UIButton , ten: UIButton, twenty: UIButton) {
        if tipLabel == "0%" {
            zero.isSelected = true
            ten.isSelected = false
            twenty.isSelected = false
            tipValue = 0.0
        } else if tipLabel == "10%" {
            zero.isSelected = false
            ten.isSelected = true
            twenty.isSelected = false
            tipValue = 0.1
            
        } else if tipLabel == "20%" {
            zero.isSelected = false
            ten.isSelected = false
            twenty.isSelected = true
            tipValue = 0.2
            
        }
    }
    func calculateTotal(bill: Float, people: Int) -> String {
        return String(format: "%.2f", (bill + (bill * (tipValue ?? 0.1))) / Float(people))
    }
}
