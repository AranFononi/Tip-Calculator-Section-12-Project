

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    var people : Int?
    @IBOutlet weak var bilTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        calculatorBrain.tipLabelUpdate(tipLabel: sender.titleLabel!.text!, zero: zeroPctButton, ten: tenPctButton, twenty: twentyPctButton)
        bilTextField.endEditing(true)
        print(calculatorBrain.tipValue!)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        people = Int(sender.value)
        splitNumberLabel.text = String(people ?? 2)
        bilTextField.endEditing(true)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "resultScreen", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.result = calculatorBrain.calculateTotal(bill: Float(bilTextField.text!) ?? 0.0, people: people ?? 2)
        destinationVC.tip = calculatorBrain.tipValue ?? 0.1
        destinationVC.people = people ?? 2
    }
    
    
    
}

