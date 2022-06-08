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
        
        // дописать в менеджере функцию селбаттон, там обнулить все каунты и изменить остатки, в экшене на кнопку селл поставить вывод текста на дисплей аутпут и потом вызвать функцию селлбаттон из мнеджера
        // Попробовать закомитить на гитхаб
    }
    
    
    
}

