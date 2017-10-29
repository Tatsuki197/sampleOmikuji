//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Tatsuki Nakatsuka on 2017/10/27.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var omikuji = ["大吉",
                   "吉",
                   "中吉",
                   "小吉",
                   "末吉",
                   "凶",
                   "大凶"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    //占いボタンが押された時発動する
    @IBAction func tapUranai(_ sender: UIButton) {
        //占いの結果をランダムに選ぶための数字を作成する
        //(7で割ってるのであまりが0から6しか出てこない)
        let r = Int(arc4random()) % omikuji.count
        
        print("今日の占い:\(omikuji[r])")
        
        //TODO　１:おみくじ結果をアラートで表示しましょう
        let alert = UIAlertController(
            title: "今日の占い",
            message: ("\(omikuji[r])です。今日も一日頑張ろう！"),
            preferredStyle: .alert)

        
        //TODO 2:アラートにokボタンをつけて、okが押されたら、おみくじ結果に紐づいた画像を画面に表示するようにしてください
        
        //アラートにOKボタンを追加
        //handler : OKボタンが押された時に行いたい処理を指定する場所。
//        alert.addAction(UIAlertAction(
//            title: "OK",
//            style: .default,
//            handler: {action in self.imageView.image = UIImage(named:"omikuji\(r).jpeg")}))
//
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {action in self.selectImg(hako: r)}))
        
        
        //アラートを表示する
        //completion: 動作が完了した後に発動される処理を指定する場所。
        present(alert, animated: false,
                completion: {() -> Void in print("アラート表示されました")})
        
   }
    
    
//
//    func selectImg(hako:Int){imageView.image = UIImage(named:"omikuji\(hako).jpeg")
//
//    }
//
    
    func selectImg(hako:Int){
//                imageView.image = UIImage
       
        switch hako{
        case 0:
            imageView.image = UIImage(named:"omikuji0.jpeg")
        case 1:
            imageView.image = UIImage(named:"omikuji1.jpeg")
        case 3:
            imageView.image = UIImage(named:"omikuji3.jpeg")
        case 4:
            imageView.image = UIImage(named:"omikuji4.jpeg")
        case 5:
            imageView.image = UIImage(named:"omikuji5.jpeg")
        case 6:
            imageView.image = UIImage(named:"omikuji6.jpeg")
        
        default: //2
            imageView.image = UIImage(named:"omikuji2.png")
   
        }
    }
    
    
    
    
//        TODO 3:出来上がったらGifhubにPushして提出


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

