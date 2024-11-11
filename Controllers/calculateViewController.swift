
import UIKit

class calculateViewController: UIViewController {

    var bmivalue = "0.0"
    var calculatebrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSliderChange: UISlider!
    
    
    @IBOutlet weak var weightSliderChange: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) 
    {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m,"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) 
    
    {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg,"
    }
    
    @IBAction func calculateButton(_ sender: UIButton)
    {
        
        let height = heightSliderChange.value
        
        
        let weight = weightSliderChange.value
        
        calculatebrain.calculateBMI(height: height,   weight: weight) // sending data
        
        let getBMI = calculatebrain.getBMIValue() // receiving data
        
        bmivalue = getBMI
        
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "gotoResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.receivedbmivalues = bmivalue
            
            destinationVC.advice = calculatebrain.getadvice()
            
            destinationVC.color = calculatebrain.getcolor()
            
        }
    }
}

