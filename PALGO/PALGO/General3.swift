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
    var previous : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(previous)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func weightsClicked(sender: AnyObject) {
    }
    
    
    @IBAction func cardioClicked(sender: AnyObject) {
    }
    
    
    @IBAction func bothClicked(sender: AnyObject) {
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
