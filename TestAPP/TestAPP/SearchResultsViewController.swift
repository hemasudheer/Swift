//
//  SearchResultsViewController.swift
//  TestAPP
//
//  Created by Hema Sudheer on 10/11/2014.
//  Copyright (c) 2014 HS Corp. All rights reserved.
//

//
//  ViewController.swift
//  TestAPP
//
//  Created by Hema Sudheer on 10/11/2014.
//  Copyright (c) 2014 HS Corp. All rights reserved.
//

import UIKit


class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, APIControllerProtocol {

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var appsTableView : UITableView?
    
    var tableData = []
    var api = APIController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        api.searchItunesFor("Angry Birds")
        api.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        let rowData: NSDictionary = self.tableData[indexPath.row] as NSDictionary
        cell.textLabel.text = rowData["trackName"] as? String
        // Grab the artworkUrl60 key to get an image URL for the app's thumbnail
        let urlString: NSString = rowData["artworkUrl60"] as NSString
        let imgURL: NSURL? = NSURL(string: urlString)
        // Download an NSData representation of the image at the URL
        let imgData = NSData(contentsOfURL: imgURL!)
        cell.imageView.image = UIImage(data: imgData!)
        // Get the formatted price string for display in the subtitle
        let formattedPrice: NSString = rowData["formattedPrice"] as NSString
        cell.detailTextLabel?.text = formattedPrice
        return cell
    }
    func didReceiveAPIResults(results: NSDictionary) {
        var resultsArr: NSArray = results["results"] as NSArray
        dispatch_async(dispatch_get_main_queue(), {
            self.tableData = resultsArr
            self.appsTableView!.reloadData()
        })
    }
}
