//
//  ViewController.swift
//  TMS DZ 4.1 (dz)
//
//  Created by Егор on 08.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countStaropramen: UILabel!
    @IBOutlet var plusStaropramenButton: UIButton!
    @IBOutlet var minusStaropramenButton: UIButton!
    
    @IBOutlet var countBud: UILabel!
    @IBOutlet var plusBudButton: UIButton!
    @IBOutlet var minusBudButton: UIButton!
    
    @IBOutlet var countSidr: UILabel!
    @IBOutlet var plusSidrButton: UIButton!
    @IBOutlet var minusSidrButton: UIButton!
    
    @IBOutlet var displayOutput: UILabel!
    
    @IBOutlet var sellButton: UIButton!
    @IBOutlet var startDayButton: UIButton!
    @IBOutlet var endDayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.displayOutput.text = ""

    }

    @IBAction func plusStaropramenButtonPressed(_ sender: UIButton) {
        Manager.shared.plustStaropramen()
        self.countStaropramen.text = ("\(Manager.shared.countStaropramen)")
    }
    
    @IBAction func minusStaropramenButtonPressed(_ sender: UIButton) {
        Manager.shared.minusStaropramn()
        self.countStaropramen.text = ("\(Manager.shared.countStaropramen)")
    }
    
    @IBAction func plusBudButtonPressed(_ sender: UIButton) {
        Manager.shared.plusBud()
        self.countBud.text = ("\(Manager.shared.countBud)")
    }
    
    @IBAction func minusBudButtonPressed(_ sender: UIButton) {
        Manager.shared.minusBud()
        self.countBud.text = ("\(Manager.shared.countBud)")
    }
    
    @IBAction func plusSidrButtonPressed(_ sender: UIButton) {
        Manager.shared.plusSidr()
        self.countSidr.text = ("\(Manager.shared.countSidr)")
    }
    
    @IBAction func minusSidrButtonPressed(_ sender: UIButton) {
        Manager.shared.minusSidr()
        self.countSidr.text = ("\(Manager.shared.countSidr)")
        
    }
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        
        Manager.shared.totalSumSelFunc()
        
        self.displayOutput.text = "Staropramen  \(Manager.shared.countStaropramen) bottle (*\(Manager.shared.staropramen.price)$), Bud \(Manager.shared.countBud) bottle (*\(Manager.shared.bud.price)$), Sidr \(Manager.shared.countSidr) bottle (*\(Manager.shared.sidr.price)$), Total: \(Manager.shared.totalSumSel)$"
        
        self.countStaropramen.text = "0"
        self.countBud.text = "0"
        self.countSidr.text = "0"
        
        Manager.shared.selButtonPressed()
    }
    
    @IBAction func startDayButtonPressed(_ sender: UIButton) {
        self.displayOutput.text = ""
        Manager.shared.startDayButtonPressed()
        
    }
    
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        self.displayOutput.text = " Profit per Day =  \(Manager.shared.profit)$"
    }
    
    // при нажатии на плюс после сел, счетчик не сбрасывается
    // проверить изменение остатка при нажатии енд и стар дей
}

