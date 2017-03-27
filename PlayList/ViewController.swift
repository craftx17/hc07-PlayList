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
    
    var subjects = ["NFL", "Dallas Cowboys", "New England Patriots", "Oakland Raiders", "New York Giants", "Green Bay Packers", "Seattle Seahawks", "Pittsburg Steelers", "Denver Broncos", "Philadelphia Eagles", "Detroit Lions", "Washington Redskins", "Minnesota Vikings", "San Francisco 49ers", "Houston Texans", "Cleveland Browns", "Atlanta Falcons", "Carolina Panthers", "Kansas City Chiefs", "Baltimore Ravens", "LA Chargers", "Arizona Cardinals", "Chicago Bears", "Buffalo Bills", "Miami Dolphins", "New Orleans Saints", "New York Jets", "Indianapolis Colts", "Tampa Bay Bucaneers", "Cincinatti Bengals", "Tennessee Titans", "Jacksonville Jaguars", "NBA", "Golden State Warriors", "Cleveland Cavaliers", "LA Lakers", "San Antonio Spurs", "New York Knicks", "Chicago Bulls", "Oklahoma City Thunder", "Houston Rockets", "Toronto Raptors", "Boston Celtics", "LA Clippers", "Miami Heat", "New Orleans Pelicans", "Brooklyn Mets", "Milwaukee Bucks", "Philadelphia 76ers", "Dallas Mavericks", "Portland Trail Blazers", "Sacramento Kings", "Atlanta Hawks", "Utah Jazz", "Minnesota Timberwolves", "Washington Wizards", "Detroit Pistons", "Indianapolis Pacers", "Memphis Grizzlies", "Charlotte Hornets", "Phoenix Suns", "Denver Nuggets", "Orlando Magic", "MLB", "Chicago Cubs", "Ney York Yankees", "LA Dodgers", "Toronto Blue Jays", "Cleveland Indians", "Boston Red Sox", "New York Mets", "San Francisco Giants", "St. Louis Cardinals", "Texas Rangers", "Atlanta Braves", "Detroit Tigers", "Baltimore Orioles", "Washington Nationals", "Pittsburg Pirates", "Houston Astros", "Anaheim Angels", "Seattle Mariners", "Philadelphia Phillies", "Kansas City Royals", "Miami Marlins", "Cincinnati Reds", "Minnesota Twins", "San Diego Padres", "Colorado Rockies", "Milwaukee Brewers", "Oakland Athletics", "Arizona Diamondbacks", "Tampa Bay Rays", "Chicago White Sox", "MLS", "Seattle Sounders", "LA Galaxy", "Toronto FC", "Ney York Red Bulls", "New York FC", "Montreal Impact", "Portland Timbers", "Orlando City SC", "Sporting Kansas City", "D.C. United", "Colorado Rapids", "Real Salt Lake", "Houston Dynamo", "Columbus Crew SC", "FC Dallas", "New England Revolution", "Chicago Fire", "San Jose Earthquakes", "Atlanta United FC", "Minnesota United FC", "NHL", "Montreal Canadiens", "Chicago Blackhawks", "Edmonton Oilers", "New York Rangers", "Pittsburg Penguins", "Toronto Maple Leafs", "Boston Bruins", "Vancouver Canucks", "Philadelphia Flyers", "Detroit Red Wings", "Columbus Blue Jackets", "Winnepeg Jets", "Minnesota Wild", "Calgary Flames", "San Jose Sharks", "LA Kings", "St. Louis Blues", "Washington Capitals", "Anaheim Ducks", "Ney York Islanders", "Buffalo Sabres", "Tampa Bay Lightning", "Florida Panthers", "Ottowa Senators", "New Jersey Devils", "Colorado Avalanche", "Carolina Hurricanes", "Arizona Coyotes", "Dallas Stars", "Nashville Predators"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let defaults = UserDefaults.standard
        //let result = defaults.value(forKey: "preferences")
        //print(result!)
        //preferences = defaults.array(forKey: "preferences") as! [String]
        
//        if (preferences.isEmpty) {
//            performSegue(withIdentifier: "ScoresController", sender: preferences)
//        }
        
        var index: Int = 0
        var size: Int = 0
        
        for _ in 0...145
        {
            let button = UIButton()
            button.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            button.setTitle(subjects[index], for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.addTarget(self, action: #selector(showTimeline), for: .touchUpInside)
            button.tag = 1
            button.frame = CGRect(x: 0, y: size, width: Int(view.frame.size.width), height: 50)
            
            index += 1
            size += 51
            
            scrollView.addSubview(button)
        }
    
        scrollView.backgroundColor = UIColor.darkGray
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: CGFloat(size))
        
    }
    
    @IBAction func nextPressed(_ sender: Any){
        let defaults = UserDefaults.standard
        defaults.set(preferences, forKey: "preferences")
        let result = defaults.value(forKey: "preferences")
        print(result!)
        performSegue(withIdentifier: "MainController", sender: preferences)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ScoresController {
            destination.preferences = preferences
        }
    }
    
//    func markPrefs() {
//        if (checkPref(button: button)) { button.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button2)) { button2.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button3)) { button3.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button4)) { button4.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button5)) { button5.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button6)) { button6.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button7)) { button7.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button8)) { button8.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button9)) { button9.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button10)) { button10.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button11)) { button11.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button12)) { button12.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button13)) { button13.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button14)) { button14.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button15)) { button15.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button16)) { button16.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button17)) { button17.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button18)) { button18.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button19)) { button19.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//        
//        if (checkPref(button: button20)) { button20.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0) }
//    }
    
    func  checkPref(button: UIButton) -> Bool {
        for pref in preferences {
            if (button.currentTitle == pref) {
                return true
            }
        }
        
        return false
    }
    
    func showTimeline(sender: UIButton!) {
        preferences.append(sender.currentTitle!)
        if (sender.backgroundColor == UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)) {
            sender.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            preferences = preferences.filter { $0 != sender.currentTitle! }
        }
        else {
            sender.backgroundColor = UIColor(red:0.29, green:0.87, blue:0.71, alpha:1.0)
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
}
