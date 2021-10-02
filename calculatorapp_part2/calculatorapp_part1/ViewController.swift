// Calculator App Part 2
// Name 01               : Alvin Carl Mercado
// Student ID            : 301215342
// Name 02               : Ishtiaque Ahmed
// Student ID            : 301223010
// Date last modified    : Sept. 17, 2021
// Short revision history: Changed the back buttom from an image to a button. (8:00 PM 9/17/21) Display a number when the button is pressed. (9:00 PM 9/17/21) Added all the calculator operation functions as required in assignment #2 document. (4:00 PM 10/01/21)
// Short description of the program: This is a standard calculator with arithmetic operations. This calculator built with swift programming language.


import UIKit

class ViewController: UIViewController
{

  
    @IBOutlet weak var display: UILabel!
    
    @IBOutlet weak var displayResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll()
    {
        workings = ""
        display.text = ""
        displayResults.text = "0"
    }

    @IBAction func pressEqual(_ sender: Any)
    {
   
        
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            displayResults.text = resultString
        }
 
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.8f", result)
        }
    }
    
    @IBAction func pressClear(_ sender: Any)
    {
        clearAll()
    }
    
    @IBAction func pressBack(_ sender: Any)
    {
        if(!workings.isEmpty)
        {
            workings.removeLast()
            display.text = workings
        }
    }
    
    func addToWorkings(value: String)
    {
        workings = workings + value
        display.text = workings
    }
    
    @IBAction func pressPercent(_ sender: Any)
    {
        addToWorkings(value: "%")
    }
    
    @IBAction func pressDivide(_ sender: Any)
    {
        addToWorkings(value: "/")
    }
    
    @IBAction func pressMultiply(_ sender: Any)
    {
        addToWorkings(value: "*")
    }
    
    @IBAction func pressMinus(_ sender: Any)
    {
        addToWorkings(value: "-")
    }
    
    @IBAction func pressPlus(_ sender: Any)
    {
        addToWorkings(value: "+")
    }
    
    @IBAction func pressDot(_ sender: Any)
    {
        addToWorkings(value: ".")
    }
    
    @IBAction func pressZero(_ sender: Any)
    {
        addToWorkings(value: "0")
    }
    
    @IBAction func pressOne(_ sender: Any)
    {
        addToWorkings(value: "1")
    }
    
    @IBAction func pressTwo(_ sender: Any)
    {
        addToWorkings(value: "2")
    }
    
    @IBAction func pressThree(_ sender: Any)
    {
        addToWorkings(value: "3")
    }
    
    @IBAction func pressFour(_ sender: Any)
    {
        addToWorkings(value: "4")
    }
    
    @IBAction func pressFive(_ sender: Any)
    {
        addToWorkings(value: "5")
    }
    
    @IBAction func pressSix(_ sender: Any)
    {
        addToWorkings(value: "6")
    }
    
    @IBAction func pressSeven(_ sender: Any)
    {
        addToWorkings(value: "7")
    }
    
    @IBAction func pressEight(_ sender: Any)
    {
        addToWorkings(value: "8")
    }
    
    @IBAction func pressNine(_ sender: Any)
    {
        addToWorkings(value: "9")
    }
    @IBAction func pressPlusMinus(_ sender: Any) {
        do {
                       // calculatorWorkings.text = String(Int(calculatorWorkings.text!)! * -1)


                         displayResults.text = String(Float(displayResults.text!)! * -1)

                    }
    }
}


