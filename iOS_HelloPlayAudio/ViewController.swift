//
//  ViewController.swift
//  iOS_HelloPlayAudio
//
//  Created by 王麒翔 on 2023/7/20.
//
//  先 import Right.mp3 檔案


import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func play(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // find sound path
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3") {
            
            // let url = URL(fileURLWithPath: path) // 背拋棄
            let url2 = URL(filePath: path)
            
            do{
                let audioPlayer = try AVAudioPlayer(contentsOf: url2)
            } catch {
                
            }
        }
        
    }


}

