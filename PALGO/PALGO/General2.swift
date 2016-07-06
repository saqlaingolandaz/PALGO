//
//  General2.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 6/9/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class General2: UIViewController {
    
    var masterArray2 : [[String]] = [];
    @IBOutlet weak var oneToThreeButton: UIButton!
    @IBOutlet weak var threeToFiveButton: UIButton!
    @IBOutlet weak var fiveToSevenButton: UIButton!
    var whatClicked : String = ""
    var moneyArray : [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(moneyArray)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var svc = segue!.destinationViewController as! General3;
        if (segue.identifier == "oneToThree") {
            svc.routine = "1-3"
            svc.masterArray3 = masterArray2
            svc.moneyArray2 = moneyArray
        } else if (segue.identifier == "threeToFive") {
            svc.routine = "3-5"
            svc.masterArray3 = masterArray2
            svc.moneyArray2 = moneyArray
        } else if (segue.identifier == "fiveToSeven") {
            svc.routine = "5-7"
            svc.masterArray3 = masterArray2
            svc.moneyArray2 = moneyArray
        }
    }
    
    
    @IBAction func oneToThreeClicked(sender: AnyObject) {
        whatClicked = "1-3"
        performSegueWithIdentifier("oneToThree", sender: self)
    }
    
    @IBAction func threeToFiveClicked(sender: AnyObject) {
        whatClicked = "3-5"
        performSegueWithIdentifier("threeToFive", sender: self)
    }

    @IBAction func fiveToSevenClicked(sender: AnyObject) {
        whatClicked = "5-7"
        performSegueWithIdentifier("fiveToSeven", sender: self)
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
