//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 曽根大輔 on 2018/02/03.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel:UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で","クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が","先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ","演説した","怒った", "踊った"]
    
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func change(){
        //それぞれのラベルに配列の要素を付け加える
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //indexの値を+1する
        index = index + 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 3{
        index = 0
            
        
        
    }
    }
    
    @IBAction func reset(){
        //それぞれのラベルを元にもどす
          itsuLabel.text = "----"
          dokodeLabel.text = "----"
          daregaLabel.text = "----"
          doshitaLabel.text = "-----"
        
        //indexを初期化する
        index = 0
        
        
    }
    
    @IBAction func random(){
        
        //乱数を生成して、それぞれのIndexの中へ入れる
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let dareIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        //コンソールに出力してそれぞれの値を確かめる
        print("いつ: \(itsuIndex)")
        print("どこで:\(dokodeIndex)")
        print("誰が:\(dareIndex)")
        print("どうした\(doshitaIndex)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

