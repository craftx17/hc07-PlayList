//
//  ScoresController.swift
//  PlayList
//
//  Created by Anthony Bond on 3/20/17.
//  Copyright © 2017 craftx17. All rights reserved.
//

import UIKit
import TwitterKit

class ScoresController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.darkGray
        
        var index: Int = 0
        var size: Int = 0
        
        for _ in _preferences {
            let button = UIButton()
            button.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1.0)
            button.setTitle(_preferences[index], for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.addTarget(self, action: #selector(showTimeline), for: .touchUpInside)
            button.frame = CGRect(x: 0, y: size, width: Int(view.frame.size.width), height: 50)
            size = size + 51
            index += 1
            scrollView.addSubview(button)
        }
        
        print(_preferences)
    }
    
    func showTimeline() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\(_preferences[0]) filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
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
        dismiss(animated: true, completion: nil)
    }
    
    func dismissTimeline() {
        dismiss(animated: true, completion: nil)
    }
    
    private var _preferences: [String] = []
    
    var preferences: [String] {
        get { return _preferences }
        set { _preferences = newValue }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
