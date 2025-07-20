//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by WanRong Wu on 7/20/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    @IBOutlet weak var captionTextView: UITextView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var post: Post!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.largeTitleDisplayMode = .never
        
        captionTextView.text = post.caption.trimHTMLTags()
        dateLabel.text = "Posted: " + post.date
        
        if let photo = post.photos.first
        {
            let url = photo.originalSize.url
            NukeExtensions.loadImage(with: url, into: pictureImageView)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
