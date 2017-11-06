//
//  ListViewController.swift
//  Shuffle
//
//  Created by 김민서 on 2017. 11. 5..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = navigationController?.isNavigationBarHidden = true
        
        let imgView = UIImageView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height - 20))
        imgView.image = #imageLiteral(resourceName: "real.png")
        view.addSubview(imgView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
