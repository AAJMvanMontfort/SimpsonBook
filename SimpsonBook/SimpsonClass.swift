//
//  SimpsonClass.swift
//  SimpsonBook
//
//  Created by AAJM van Montfort on 14/07/2020.
//

import Foundation
import UIKit

class Simpsons {
    
    var image : UIImage
    var name :  String
    var job : String
    
    init(nameOfSimpson: String, imageOfSimpson: UIImage, jobOfSimpson: String) {
        name = nameOfSimpson
        image = imageOfSimpson
        job = jobOfSimpson
    }
}
