//
//  ConverterViewController.swift
//  Conversion-Calculator
//
//  Created by Joseph Frank on 11/10/17.
//  Copyright © 2017 Joseph Frank. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var converters = [ Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                       Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                       Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                       Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi") ]

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func convert(_ sender: UIButton) {
        let alert = UIAlertController(title:"Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        for converter in converters{
            alert.addAction(UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler:{
                 (alertAction) -> Void in
                
                self.outputDisplay.text = converter.outputUnit
                self.inputDisplay.text = converter.inputUnit
            }))
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
