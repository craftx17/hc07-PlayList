//
//  ScoresController.swift
//  PlayList
//
//  Created by Xavier Craft on 3/20/17.
//  Copyright © 2017 craftx17. All rights reserved.
//

import UIKit
import TwitterKit

class ScoresController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.darkGray
        
        let defaults = UserDefaults.standard
        let prefs = defaults.value(forKey: "preferences") as! [String]
        
        var index: Int = 0
        var size: Int = 0
        
        for _ in prefs {
            let button = UIButton()
            button.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            button.setTitle(prefs[index], for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.addTarget(self, action: #selector(showTimeline), for: .touchUpInside)
            button.frame = CGRect(x: 0, y: size, width: Int(view.frame.size.width), height: 50)
            size += 51
            index += 1
            scrollView.addSubview(button)
        }
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: CGFloat(size + 44))
        
        print(_preferences)
    }
    
    func showTimeline(sender: UIButton!) {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\(sender.currentTitle!) filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let barButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = barButton
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changePrefs(_ sender: Any) {
        performSegue(withIdentifier: "backSegue", sender: nil)
        //dismiss(animated: true, completion: nil)
        _preferences.removeAll()
        let defaults = UserDefaults.standard
        defaults.set(_preferences, forKey: "preferences")
        let result = defaults.value(forKey: "preferences")
        print(result!)
    }
    
    func dismissTimeline() {
        dismiss(animated: true, completion: nil)
    }
    
    private var _preferences: [String] = []
    
    var preferences: [String] {
        get { return _preferences }
        set { _preferences = newValue }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
}
