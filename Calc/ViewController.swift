import UIKit

class ViewController: UIViewController {
    
    var userIsTyping = false
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func swipeHandlerRight(_ gestureRecognizer: UISwipeGestureRecognizer) {
        
        if gestureRecognizer.state == .ended {
            var valueBeforeGesture = resultLabel.text!
            if valueBeforeGesture.count > 1 {
                valueBeforeGesture.remove(at: valueBeforeGesture.index(before: valueBeforeGesture.endIndex))
                resultLabel.text = valueBeforeGesture
            } else if valueBeforeGesture.count == 1 {
                resultLabel.text = "0"
                userIsTyping = false
            } else if resultLabel.text == "0" {
                resultLabel.text = "0"
                userIsTyping = false
            }
        }
    }
    
    @IBAction func swipeHandlerLeft(_ gestureRecognizer: UISwipeGestureRecognizer) {
        
        if gestureRecognizer.state == .ended {
            var valueBeforeGesture = resultLabel.text!
            if valueBeforeGesture.count > 1 {
                valueBeforeGesture.remove(at: valueBeforeGesture.index(before: valueBeforeGesture.endIndex))
                resultLabel.text = valueBeforeGesture
            } else if valueBeforeGesture.count == 1 {
                resultLabel.text = "0"
                userIsTyping = false
            } else if resultLabel.text == "0" {
                resultLabel.text = "0"
                userIsTyping = false
            }
        }
    }
    
    
    
    
    
    
    
    
    
    @IBAction func numberButtonTouched(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping {
            let textCurrentlyOnDisplay = resultLabel.text!
            resultLabel.text = textCurrentlyOnDisplay + digit
        } else {
            resultLabel.text = digit
            userIsTyping = true
        }
        
    }
    
    var resultValue: Double {
        get {
            return(Double(resultLabel.text!)!)
        }
        set {
            resultLabel.text = String(newValue)
        }
    }
    
    private var model = Model()
    
    
    @IBAction func functionalButtonTouched(_ sender: UIButton) {
        if userIsTyping {
            model.setOperand(resultValue)
            userIsTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            model.performOperation(mathematicalSymbol)
        }
        if let result = model.result {
            resultValue = result
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

