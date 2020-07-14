//
//  ViewController.swift
//  SimpsonBook
//
//  Created by AAJM van Montfort on 14/07/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvSimpson: UITableView!
    
    let homer = Simpsons(nameOfSimpson: "Homer Simpson", imageOfSimpson: UIImage(named: "Homer Simpson")!, jobOfSimpson: "Nuclear Safety Inspector")
    let abraham = Simpsons(nameOfSimpson: "Abraham Simpson", imageOfSimpson: UIImage(named: "Abraham Simpson")!, jobOfSimpson: "NSprawl-Mart greeter")
    let bart = Simpsons(nameOfSimpson: "Bart Simpson", imageOfSimpson: UIImage(named: "Bart Simpson")!, jobOfSimpson: "Student")
    let herbert = Simpsons(nameOfSimpson: "Herbert Powell", imageOfSimpson: UIImage(named: "Herb Powell")!, jobOfSimpson: "Invemtor")
    let lisa = Simpsons(nameOfSimpson: "Lisa Simpson", imageOfSimpson: UIImage(named: "Lisa Simpson")!, jobOfSimpson: "Student")
    let maggie = Simpsons(nameOfSimpson: "Maggie Simpson", imageOfSimpson: UIImage(named: "Maggie Simpson")!, jobOfSimpson: "Baby")
    let marge = Simpsons(nameOfSimpson: "Marge Simpson", imageOfSimpson: UIImage(named: "Marge Simpson")!, jobOfSimpson: "Housewife")
    let montgomery = Simpsons(nameOfSimpson: "Montgomery Burns", imageOfSimpson: UIImage(named: "Montgomery Burns")!, jobOfSimpson: "Owner Nuclear Power plant")
    
    var simpsonArray = [Simpsons]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvSimpson.delegate = self
        tvSimpson.dataSource = self
    }
    
    func initSimpsonArray() {
        simpsonArray = [homer, marge, bart, lisa, maggie, abraham, herbert, montgomery]
    }
    
    func deleteSimpson(numberInArray: Int) {
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteSimpson(numberInArray: indexPath.row)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        simpsonArray.count
    }
    
}

