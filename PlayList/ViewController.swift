//
//  ViewController.swift
//  PlayList
//
//  Created by Anthony Bond on 11/30/16.
//  Copyright © 2016 craftx17. All rights reserved.

// TODO: Base this Tweet ID on some data from elsewhere in your app
//

import UIKit
import TwitterKit

class ViewController: UIViewController
{
    @IBOutlet weak var scrollView: UIScrollView!

    
    
    //var searchQuery = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.backgroundColor = UIColor.darkGray
        button.setTitle("NFL", for: .normal)
        button.addTarget(self, action: #selector(showTimeline1), for: .touchUpInside)
        button.tag = 1
        button.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button)
        
        let button12 = UIButton()
        button12.backgroundColor = UIColor.darkGray
        button12.setTitle("Olympics", for: .normal)
        button12.addTarget(self, action: #selector(showTimeline12), for: .touchUpInside)
        button12.tag = 1
        button12.frame = CGRect(x: 0, y: 51, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button12)
        
        let button11 = UIButton()
        button11.backgroundColor = UIColor.darkGray
        button11.setTitle("Aroldis Chapman", for: .normal)
        button11.addTarget(self, action: #selector(showTimeline11), for: .touchUpInside)
        button11.tag = 1
        button11.frame = CGRect(x: 0, y: 102, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button11)
        
        let button2 = UIButton()
        button2.backgroundColor = UIColor.darkGray
        button2.setTitle("NHL", for: .normal)
        button2.addTarget(self, action: #selector(showTimeline2), for: .touchUpInside)
        button2.tag = 1
        button2.frame = CGRect(x: 0, y: 153, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button2)
        
        let button3 = UIButton()
        button3.backgroundColor = UIColor.darkGray
        button3.setTitle("MLB", for: .normal)
        button3.addTarget(self, action: #selector(showTimeline3), for: .touchUpInside)
        button3.tag = 1
        button3.frame = CGRect(x: 0, y: 204, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button3)
        
        let button4 = UIButton()
        button4.backgroundColor = UIColor.darkGray
        button4.setTitle("NBA", for: .normal)
        button4.addTarget(self, action: #selector(showTimeline4), for: .touchUpInside)
        button4.tag = 1
        button4.frame = CGRect(x: 0, y: 255, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button4)
        
        let button5 = UIButton()
        button5.backgroundColor = UIColor.darkGray
        button5.setTitle("Pacers", for: .normal)
        button5.addTarget(self, action: #selector(showTimeline5), for: .touchUpInside)
        button5.tag = 1
        button5.frame = CGRect(x: 0, y: 306, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button5)
        
        let button6 = UIButton()
        button6.backgroundColor = UIColor.darkGray
        button6.setTitle("Colts", for: .normal)
        button6.addTarget(self, action: #selector(showTimeline6), for: .touchUpInside)
        button6.tag = 1
        button6.frame = CGRect(x: 0, y: 357, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button6)
        
        let button7 = UIButton()
        button7.backgroundColor = UIColor.darkGray
        button7.setTitle("Stars", for: .normal)
        button7.addTarget(self, action: #selector(showTimeline7), for: .touchUpInside)
        button7.tag = 1
        button7.frame = CGRect(x: 0, y: 408, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button7)
        
        let button8 = UIButton()
        button8.backgroundColor = UIColor.darkGray
        button8.setTitle("Cubs", for: .normal)
        button8.addTarget(self, action: #selector(showTimeline8), for: .touchUpInside)
        button8.tag = 1
        button8.frame = CGRect(x: 0, y: 459, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button8)
        
        let button9 = UIButton()
        button9.backgroundColor = UIColor.darkGray
        button9.setTitle("Cowboys", for: .normal)
        button9.addTarget(self, action: #selector(showTimeline9), for: .touchUpInside)
        button9.tag = 1
        button9.frame = CGRect(x: 0, y: 510, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button9)
        
        let button10 = UIButton()
        button10.backgroundColor = UIColor.darkGray
        button10.setTitle("Steph Curry", for: .normal)
        button10.addTarget(self, action: #selector(showTimeline10), for: .touchUpInside)
        button10.tag = 1
        button10.frame = CGRect(x: 0, y: 561, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button10)
        
        let button13 = UIButton()
        button13.backgroundColor = UIColor.darkGray
        button13.setTitle("Lebron James", for: .normal)
        button13.addTarget(self, action: #selector(showTimeline13), for: .touchUpInside)
        button13.tag = 1
        button13.frame = CGRect(x: 0, y: 612, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button13)
        
        let button14 = UIButton()
        button14.backgroundColor = UIColor.darkGray
        button14.setTitle("Tiger Woods", for: .normal)
        button14.addTarget(self, action: #selector(showTimeline14), for: .touchUpInside)
        button14.tag = 1
        button14.frame = CGRect(x: 0, y: 663, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button14)
        
        let button15 = UIButton()
        button15.backgroundColor = UIColor.darkGray
        button15.setTitle("PGA", for: .normal)
        button15.addTarget(self, action: #selector(showTimeline15), for: .touchUpInside)
        button15.tag = 1
        button15.frame = CGRect(x: 0, y: 714, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button15)
        
        let button16 = UIButton()
        button16.backgroundColor = UIColor.darkGray
        button16.setTitle("Jordan Spieth", for: .normal)
        button16.addTarget(self, action: #selector(showTimeline16), for: .touchUpInside)
        button16.tag = 1
        button16.frame = CGRect(x: 0, y: 765, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button16)
        
        let button17 = UIButton()
        button17.backgroundColor = UIColor.darkGray
        button17.setTitle("Von Miller", for: .normal)
        button17.addTarget(self, action: #selector(showTimeline17), for: .touchUpInside)
        button17.tag = 1
        button17.frame = CGRect(x: 0, y: 816, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button17)
        
        let button18 = UIButton()
        button18.backgroundColor = UIColor.darkGray
        button18.setTitle("Drew Brees", for: .normal)
        button18.addTarget(self, action: #selector(showTimeline18), for: .touchUpInside)
        button18.tag = 1
        button18.frame = CGRect(x: 0, y: 867, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button18)
        
        let button19 = UIButton()
        button19.backgroundColor = UIColor.darkGray
        button19.setTitle("OG Anunoby", for: .normal)
        button19.addTarget(self, action: #selector(showTimeline19), for: .touchUpInside)
        button19.tag = 1
        button19.frame = CGRect(x: 0, y: 918, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button19)
        
        let button20 = UIButton()
        button20.backgroundColor = UIColor.darkGray
        button20.setTitle("Matt Stafford", for: .normal)
        button20.addTarget(self, action: #selector(showTimeline20), for: .touchUpInside)
        button20.tag = 1
        button20.frame = CGRect(x: 0, y: 969, width: view.frame.size.width, height: 50)
        
        scrollView.addSubview(button20)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: CGFloat(1020))
        
    }
    
    func showTimeline1() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "NFL OR \"National Football League\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline2() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "NHL OR \"National Hockey League\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline3() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "MLB OR \"Major League Baseball\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline4() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "NBA OR \"National Basketball League\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline5() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Pacers OR \"Indiana Pacers\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    
    func showTimeline6() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Colts OR \"Indianapolis Colts\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    
    func showTimeline7() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Dallas Stars\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline8() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Cubs OR \"Chicago Cubs\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline9() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Cowboys OR \"Dallas Cowboys\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline10() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewControlller = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Steph Curry filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewControlller.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewControlller)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline11() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Aroldis Chapman filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline12() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "Olympics filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline13() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Lebron James\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline14() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Tiger Woods\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline15() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "PGA AND Golf filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline16() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Jordan Spieth\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline17() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Von Miller\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline18() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Drew Brees\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    func showTimeline19() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"OG Anunoby\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }
    
    func showTimeline20() {
        // Create an API client and data source to fetch Tweets for the timeline
        let client = TWTRAPIClient()
        //TODO: Replace with your collection id or a different data source
        
        // Create the timeline view controller
        let timelineViewController = TWTRTimelineViewController(dataSource: TWTRSearchTimelineDataSource.init(searchQuery: "\"Matt Stafford\" filter:verified", apiClient: client, languageCode: "en", maxTweetsPerRequest: 500))
        // Create done button to dismiss the view controller
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissTimeline))
        timelineViewController.navigationItem.leftBarButtonItem = button
        // Create a navigation controller to hold the
        let navigationController = UINavigationController(rootViewController: timelineViewController)
        showDetailViewController(navigationController, sender: self)
    }

    
    func dismissTimeline() {
        dismiss(animated: true, completion: nil)
    }
}
