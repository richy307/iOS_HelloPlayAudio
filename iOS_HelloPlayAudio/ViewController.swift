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
    
    // 宣告 ViewController 屬性
    var audioPlayer: AVAudioPlayer?
    

    @IBAction func play(_ sender: UIButton) {
        audioPlayer?.stop() // 播放停止
        audioPlayer?.currentTime = 0 // 音樂目前時間
        audioPlayer?.play() // 播放音樂
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 讀取音檔
        // find sound path // 1. 檔案位置路徑
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3") {
            
            // 2. URL 資料格式
            // let url = URL(fileURLWithPath: path) // 背拋棄 舊的用法
            let url2 = URL(filePath: path)
            
            do{
                // 3. make an audio player
                audioPlayer = try AVAudioPlayer(contentsOf: url2)
                // 調整屬性
                audioPlayer?.enableRate = true // 可調速率
                audioPlayer?.rate = 0.5 // 速率
                audioPlayer?.numberOfLoops = -1 // -1, 0, 1, 2, ... // 播放次數
                audioPlayer?.volume = 0.3 // 音量
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("no such file")
        }
        
        // guard let
        guard let newPath = Bundle.main.path(forResource: "Right", ofType: "mp3") else {
            print("no such path")
            return
        }
        let url3 = URL(filePath: newPath) // newPath 的 scope 範圍可取得
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url3)
        } catch {
            print(error.localizedDescription)
        }
        
    }


}

