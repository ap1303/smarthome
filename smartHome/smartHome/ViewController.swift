//
//  ViewController.swift
//  smartHome
//
//  Created by PeizhiZhang on 2018/8/12.
//  Copyright © 2018 PeizhiZhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fenceUp(_ sender: UIButton) {
        let alert = UIAlertController(title: "Up", message: "Are you certain?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Up", style: .default, handler: {
            _ in
            let url = URL(string: "http://kenchang.dynu.com:3000/command?item=fence&action=up")
            
            let task = URLSession.shared.dataTask(with: url!) {
            (data, response, error) in
            print("completed request!")
            }
            
            
            task.resume()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            _ in
            print("cancelled")
        }))
        
        present(alert, animated: true, completion: nil)
        
    
    }
    
    @IBAction func fenceDown(_ sender: UIButton) {
        let alert = UIAlertController(title: "Down", message: "Are you certain?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Down", style: .default, handler: {
            _ in
            let url = URL(string: "http://kenchang.dynu.com:3000/command?item=fence&action=down")
            
            let task = URLSession.shared.downloadTask(with: url!)
            
            task.resume()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            _ in
            print("cancelled")
        }))
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    @IBAction func garageUp(_ sender: UIButton) {
        let alert = UIAlertController(title: "Up", message: "Are you certain?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Up", style: .default, handler: {
            _ in
            let url = URL(string: "http://kenchang.dynu.com:3000/command?item=garage&action=up")
            
            let task = URLSession.shared.dataTask(with: url!) {
                (data, response, error) in
                print("completed request!")
            }
            
            task.resume()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            _ in
            print("cancelled")
        }))
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func garageDown(_ sender: UIButton) {
        let alert = UIAlertController(title: "Down", message: "Are you certain?", preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "Down", style: .default, handler:  {
            _ in
            let url = URL(string: "http://kenchang.dynu.com:3000/command?item=garage&action=down")
            
            let task = URLSession.shared.downloadTask(with: url!)
            
            task.resume()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            _ in
            print("cancelled")
        }))
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
}

