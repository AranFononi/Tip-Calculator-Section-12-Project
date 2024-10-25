

import UIKit

class ResultsViewController: UIViewController {

    var result: String? = nil
    var people: Int? = nil
    var tip: Float? = nil
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        totalLabel.text = result
        settingsLabel.text = "Split between \(people!) people, with \(Int(tip! * 100)) % tip."

    }
    


}
