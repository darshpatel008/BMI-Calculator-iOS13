import UIKit

struct CalculateBrain {
   
    
    var bmi: BMI?
    
    func getBMIValue() -> String
    {
        let bmito2decimalplace = String(format: "%.2f",bmi?.value ?? 0.0)
        return bmito2decimalplace
    }
    func getcolor() -> UIColor
    {
        let colorIS = bmi?.color ?? UIColor.blue
        return colorIS
    }
    func getadvice() -> String
    {
        let adviceIS = bmi?.advice ?? "you are fit"
        return adviceIS
    }
    
    
    
    
    mutating func calculateBMI(height: Float , weight: Float)
    {
        
        let calculatedBMI = weight / (height * height)
        
        if(calculatedBMI < 18.5)
        {
            bmi = BMI(value: calculatedBMI, advice: "Eat more pies", color: UIColor.systemBlue)
        }
        if(calculatedBMI>18.5 && calculatedBMI<24.9)
        {
            bmi = BMI(value: calculatedBMI, advice: "You are a Healthy Person ", color: UIColor.green)
        }
        if(calculatedBMI > 24.9)
        {
            bmi = BMI(value: calculatedBMI, advice: "Eat less food", color: UIColor.systemRed)
        }
    }
    
 

}
