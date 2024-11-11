
import UIKit

class ResultViewController: UIViewController {

    var calculatebrain = CalculateBrain()
    
    var receivedbmivalues: String = ""
    var color: UIColor = UIColor.blue
    var advice: String = ""
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad()
    {
        bmiLabel.text = receivedbmivalues
        view.backgroundColor = color
        adviceLabel.text = advice
    }

    @IBAction func recalculateButton(_ sender: Any) 
    {
        self.dismiss(animated: true)
    }
    
    
}
