//
//  ViewController.swift
//  Fake, Mock, Stub
//
//  Created by Juliana Nielson on 5/15/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/*
 I need one of each object, use each in testing, for some sort of scenario.
 
 Scenario: Miss Prim and Proper needs to find Alley Stray. She will use a search() method.
 
 Fake and Stub can use the same test, but one uses some predetermined values. Mock can simply check if a method is called.
 
 Fake Object:
 A real object, but does no actual work. So just a fake version of... something.
 Test if the search is successful! (not nil)
 
 Mock Object:
 Used to test connections and interactions.
 Test if Prim started searching!
 
 Stub Object:
 Used with predetermiend values.
 Test what happens when the search fails!
 
 */

