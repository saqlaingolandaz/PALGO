//
//  General3.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 6/14/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class General3: UIViewController {
    
    var masterArray3 : [[String]] = []
    @IBOutlet weak var weightsTraining: UIButton!
    @IBOutlet weak var cardio: UIButton!
    @IBOutlet weak var both: UIButton!
    var routine : String!
    var moneyArray2 : [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(moneyArray2)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var svc = segue!.destinationViewController as! General4;
        if (segue.identifier == "weights") {
            svc.routine = routine
            svc.workout = "weights"
            svc.masterArray4 = masterArray3
            svc.moneyArray3 = moneyArray2
        } else if (segue.identifier == "cardio") {
            svc.routine = routine
            svc.workout = "cardio"
            svc.masterArray4 = masterArray3
            svc.moneyArray3 = moneyArray2
        } else if (segue.identifier == "both") {
            svc.routine = routine
            svc.workout = "both"
            svc.masterArray4 = masterArray3
            svc.moneyArray3 = moneyArray2
        }
    }
    
    
    @IBAction func weightsClicked(sender: AnyObject) {
        performSegueWithIdentifier("weights", sender: self)
    }
    
    
    @IBAction func cardioClicked(sender: AnyObject) {
        performSegueWithIdentifier("cardio", sender: self)
    }
    
    
    @IBAction func bothClicked(sender: AnyObject) {
        performSegueWithIdentifier("both", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
