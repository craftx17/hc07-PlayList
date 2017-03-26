//
//  ViewController.swift
//  PlayList
//
//  Created by Xavier Craft on 11/30/16.
//  Copyright © 2016 craftx17. All rights reserved.

// TODO: Base this Tweet ID on some data from elsewhere in your app
//

import UIKit
import TwitterKit

class ViewController: UIViewController
{
    var preferences = [String]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nextButton: UIButton!
    //var buttons = [UIButton]()

    let button = UIButton()
    let button12 = UIButton()
    let button11 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button10 = UIButton()
    let button13 = UIButton()
    let button14 = UIButton()
    let button15 = UIButton()
    let button16 = UIButton()
    let button17 = UIButton()
    let button18 = UIButton()
    let button19 = UIButton()
    let button20 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let result = defaults.value(forKey: "preferences")
        //print(result!)
        //preferences = defaults.array(forKey: "preferences") as! [String]
        
        if (!preferences.isEmpty) {
            performSegue(withIdentifier: "ScoresController", sender: preferences)
        }
        
        scrollView.backgroundColor = UIColor.darkGray
        
        button.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button.setTitle("NFL", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.addTarget(self, action: #selector(showTimeline1), for: .touchUpInside)
        button.tag = 1
        button.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button)
        
        button12.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button12.setTitle("Olympics", for: .normal)
        button12.setTitleColor(UIColor.darkGray, for: .normal)
        button12.addTarget(self, action: #selector(showTimeline20), for: .touchUpInside)
        button12.tag = 1
        button12.frame = CGRect(x: 0, y: 51, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button12)
        
        button11.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button11.setTitle("Aroldis Chapman", for: .normal)
        button11.setTitleColor(UIColor.darkGray, for: .normal)
        button11.addTarget(self, action: #selector(showTimeline11), for: .touchUpInside)
        button11.tag = 1
        button11.frame = CGRect(x: 0, y: 102, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button11)
        
        button2.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button2.setTitle("NHL", for: .normal)
        button2.setTitleColor(UIColor.darkGray, for: .normal)
        button2.addTarget(self, action: #selector(showTimeline2), for: .touchUpInside)
        button2.tag = 1
        button2.frame = CGRect(x: 0, y: 153, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button2)
        
        button3.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button3.setTitle("MLB", for: .normal)
        button3.setTitleColor(UIColor.darkGray, for: .normal)
        button3.addTarget(self, action: #selector(showTimeline3), for: .touchUpInside)
        button3.tag = 1
        button3.frame = CGRect(x: 0, y: 204, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button3)
    
        button4.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button4.setTitle("NBA", for: .normal)
        button4.setTitleColor(UIColor.darkGray, for: .normal)
        button4.addTarget(self, action: #selector(showTimeline4), for: .touchUpInside)
        button4.tag = 1
        button4.frame = CGRect(x: 0, y: 255, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button4)
        
        button5.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button5.setTitle("Pacers", for: .normal)
        button5.setTitleColor(UIColor.darkGray, for: .normal)
        button5.addTarget(self, action: #selector(showTimeline5), for: .touchUpInside)
        button5.tag = 1
        button5.frame = CGRect(x: 0, y: 306, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button5)
        
        button6.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button6.setTitleColor(UIColor.darkGray, for: .normal)
        button6.setTitle("Colts", for: .normal)
        button6.addTarget(self, action: #selector(showTimeline6), for: .touchUpInside)
        button6.tag = 1
        button6.frame = CGRect(x: 0, y: 357, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button6)
        
        button7.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button7.setTitle("Stars", for: .normal)
        button7.setTitleColor(UIColor.darkGray, for: .normal)
        button7.addTarget(self, action: #selector(showTimeline7), for: .touchUpInside)
        button7.tag = 1
        button7.frame = CGRect(x: 0, y: 408, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button7)
        
        button8.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button8.setTitle("Cubs", for: .normal)
        button8.setTitleColor(UIColor.darkGray, for: .normal)
        button8.addTarget(self, action: #selector(showTimeline8), for: .touchUpInside)
        button8.tag = 1
        button8.frame = CGRect(x: 0, y: 459, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button8)
        
        button9.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button9.setTitle("Cowboys", for: .normal)
        button9.setTitleColor(UIColor.darkGray, for: .normal)
        button9.addTarget(self, action: #selector(showTimeline9), for: .touchUpInside)
        button9.tag = 1
        button9.frame = CGRect(x: 0, y: 510, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button9)
        
        button10.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button10.setTitle("Steph Curry", for: .normal)
        button10.setTitleColor(UIColor.darkGray, for: .normal)
        button10.addTarget(self, action: #selector(showTimeline10), for: .touchUpInside)
        button10.tag = 1
        button10.frame = CGRect(x: 0, y: 561, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button10)
        
        button13.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button13.setTitle("Lebron James", for: .normal)
        button13.setTitleColor(UIColor.darkGray, for: .normal)
        button13.addTarget(self, action: #selector(showTimeline12), for: .touchUpInside)
        button13.tag = 1
        button13.frame = CGRect(x: 0, y: 612, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button13)
        
        button14.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button14.setTitle("Tiger Woods", for: .normal)
        button14.setTitleColor(UIColor.darkGray, for: .normal)
        button14.addTarget(self, action: #selector(showTimeline13), for: .touchUpInside)
        button14.tag = 1
        button14.frame = CGRect(x: 0, y: 663, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button14)
        
        button15.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button15.setTitle("PGA", for: .normal)
        button15.setTitleColor(UIColor.darkGray, for: .normal)
        button15.addTarget(self, action: #selector(showTimeline14), for: .touchUpInside)
        button15.tag = 1
        button15.frame = CGRect(x: 0, y: 714, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button15)
        
        button16.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button16.setTitle("Jordan Spieth", for: .normal)
        button16.setTitleColor(UIColor.darkGray, for: .normal)
        button16.addTarget(self, action: #selector(showTimeline15), for: .touchUpInside)
        button16.tag = 1
        button16.frame = CGRect(x: 0, y: 765, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button16)
        
        button17.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button17.setTitle("Von Miller", for: .normal)
        button17.setTitleColor(UIColor.darkGray, for: .normal)
        button17.addTarget(self, action: #selector(showTimeline16), for: .touchUpInside)
        button17.tag = 1
        button17.frame = CGRect(x: 0, y: 816, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button17)
        
        button18.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button18.setTitle("Drew Brees", for: .normal)
        button18.setTitleColor(UIColor.darkGray, for: .normal)
        button18.addTarget(self, action: #selector(showTimeline17), for: .touchUpInside)
        button18.tag = 1
        button18.frame = CGRect(x: 0, y: 867, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button18)
        
        button19.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button19.setTitle("OG Anunoby", for: .normal)
        button19.setTitleColor(UIColor.darkGray, for: .normal)
        button19.addTarget(self, action: #selector(showTimeline18), for: .touchUpInside)
        button19.tag = 1
        button19.frame = CGRect(x: 0, y: 918, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button19)
        
        button20.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
        button20.setTitle("Matt Stafford", for: .normal)
        button20.setTitleColor(UIColor.darkGray, for: .normal)
        button20.addTarget(self, action: #selector(showTimeline19), for: .touchUpInside)
        button20.tag = 1
        button20.frame = CGRect(x: 0, y: 969, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button20)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: CGFloat(1020))
        
    }
    
    @IBAction func nextPressed(_ sender: Any){
        let defaults = UserDefaults.standard
        defaults.set(preferences, forKey: "preferences")
        let result = defaults.value(forKey: "preferences")
        print(result!)
        performSegue(withIdentifier: "ScoresController", sender: preferences)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ScoresController {
            destination.preferences = preferences
        }
    }
    
    func markPrefs() {
        if (checkPref(button: button)) { button.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button2)) { button2.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button3)) { button3.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button4)) { button4.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button5)) { button5.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button6)) { button6.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button7)) { button7.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button8)) { button8.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button9)) { button9.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button10)) { button10.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button11)) { button11.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button12)) { button12.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button13)) { button13.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button14)) { button14.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button15)) { button15.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button16)) { button16.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button17)) { button17.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button18)) { button18.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button19)) { button19.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
        
        if (checkPref(button: button20)) { button20.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
    }
    
    func  checkPref(button: UIButton) -> Bool {
        for pref in preferences {
            if (button.currentTitle == pref) {
                return true
            }
        }
        
        return false
    }
    
    func showTimeline1() {
        preferences.append("NFL")
        if (button.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "NFL" }
        }
        else {
            button.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline2() {
        preferences.append("NHL")
        if (button2.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button2.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "NHL" }
        }
        else {
            button2.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline3() {
        preferences.append("MLB")
        if (button3.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button3.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "MLB" }
        }
        else {
            button3.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline4() {
        preferences.append("NBA")
        if (button4.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button4.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "NBA" }
        }
        else {
            button4.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline5() {
        preferences.append("Pacers")
        if (button5.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button5.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Pacers" }
        }
        else {
            button5.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    
    func showTimeline6() {
        preferences.append("Colts")
        if (button6.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button6.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Colts" }
        }
        else {
            button6.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    
    func showTimeline7() {
        preferences.append("Stars")
        if (button7.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button7.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Stars" }
        }
        else {
            button7.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline8() {
        preferences.append("Cubs")
        if (button8.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button8.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Cubs" }
        }
        else {
            button8.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline9() {
        preferences.append("Cowboys")
        if (button9.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button9.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Cowboys" }
        }
        else {
            button9.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline10() {
        preferences.append("Steph Curry")
        if (button10.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button10.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Steph Curry" }
        }
        else {
            button10.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline11() {
        preferences.append("Aroldis Chapman")
        if (button11.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button11.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Aroldis Chapman" }
        }
        else {
            button11.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline12() {
        preferences.append("Lebron James")
        if (button13.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button13.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Lebron James" }
        }
        else {
            button13.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline13() {
        preferences.append("Tiger Woods")
        if (button14.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button14.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Tiger Woods" }
        }
        else {
            button14.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline14() {
        preferences.append("PGA")
        if (button15.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button15.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "PGA" }
        }
        else {
            button15.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline15() {
        preferences.append("Jordan Spieth")
        if (button16.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button16.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Jordan Spieth" }
        }
        else {
            button16.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline16() {
        preferences.append("Von Miller")
        if (button17.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button17.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Von Miller" }
        }
        else {
            button17.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline17() {
        preferences.append("Drew Brees")
        if (button18.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button18.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Drew Brees" }
        }
        else {
            button18.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline18() {
        preferences.append("OG Anunoby")
        if (button19.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button19.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "OG Anunoby" }
        }
        else {
            button19.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }

    func showTimeline19() {
        preferences.append("Matt Stafford")
        if (button20.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button20.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Matt Stafford" }
        }
        else {
            button20.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    func showTimeline20() {
        preferences.append("Olympics")
        if (button12.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            button12.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != "Olympics" }
        }
        else {
            button12.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
}

