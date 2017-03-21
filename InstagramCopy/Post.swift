//
//  Instance.swift
//  InstagramCopy
//
//  Created by Shivan Desai on 3/16/17.
//  Copyright © 2017 Shivan Desai. All rights reserved.
//

import UIKit
import Parse

class Post: NSObject {
    
    class func postUserImage(image: UIImage?, withCaption caption: String?, withCompletion completion: PFBooleanResultBlock?) {
        let post = PFObject.init(className: "Post", dictionary:
            ["media" : getPFFilefromImage(image: image),
             "author": PFUser.current()!,
             "caption" : caption!,
             "like_count": 0,
             "comment_count": 0])
        post.saveInBackground(block: completion)
    }
    
    class func getPFFilefromImage(image: UIImage?) -> PFFile? {
        if let image = image {
            if let imageData = UIImagePNGRepresentation(image) {
                return PFFile.init(name: "image.png", data: imageData)
            }
        }
        return nil
    }
    
}
