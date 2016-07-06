//
//  General4.swift
//  PALGO
//
//  Created by Saqlain Golandaz on 6/27/16.
//  Copyright © 2016 SaqlainGolandaz. All rights reserved.
//

import UIKit

class General4: UIViewController {
    
    var masterArray4 : [[String]] = []
    var routine : String!
    var workout : String!
    
    @IBOutlet weak var lessThanThree: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var moreThanThree: UIButton!
    var moneyArray3 : [Int] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(moneyArray3)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var svc = segue!.destinationViewController as! FinalGeneral;
        if (segue.identifier == "lessThanThree") {
            svc.meals = "< 3"
            svc.masterArray5 = masterArray4
            svc.moneyArray4 = moneyArray3
            svc.routine = routine
            svc.workout = workout
        } else if (segue.identifier == "three") {
            svc.meals = "3"
            svc.masterArray5 = masterArray4
            svc.moneyArray4 = moneyArray3
            svc.routine = routine
            svc.workout = workout
        } else if (segue.identifier == "moreThanThree") {
            svc.meals = "> 3"
            svc.masterArray5 = masterArray4
            svc.moneyArray4 = moneyArray3
            svc.routine = routine
            svc.workout = workout
        }
    }
    
    
    @IBAction func lessThanThreeClicked(sender: AnyObject) {
        performSegueWithIdentifier("lessThanThree", sender: self)
    }
    
    @IBAction func threeClicked(sender: AnyObject) {
        performSegueWithIdentifier("three", sender: self)
    }
    
    @IBAction func moreThanThreeClicked(sender: AnyObject) {
        performSegueWithIdentifier("moreThanThree", sender: self)
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
