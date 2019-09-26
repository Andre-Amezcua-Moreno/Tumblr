//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Andrea Amezcua Moreno on 9/25/19.
//  Copyright © 2019 Andrea Amezcua Moreno. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoDetailsViewController: UIViewController {

    
    @IBOutlet weak var backdropView: UIImageView!
    var post: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            let photo = photos[0]
            // 2.
            let originalSize = photo["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            backdropView.af_setImage(withURL: url!)
        }
        
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
