//
//  ThirdViewController.swift
//  meemyeye
//
//  Created by ict on 9/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation
import  UIKit
import AVFoundation
class ThirdViewController: UIViewController, AVAudioPlayerDelegate{
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var queLabel: UILabel!
    
    var randomDiceIndex1 : Int = 0
    var timer = Timer()
    var diceran = ""
    var timeCount = 30
    var score = 0
    var scores = 0
    var audioPlayer : AVAudioPlayer!
    let soundFilesName = ["false","true"]
    
    var diceArray = ["1","2","3","4","5","6","7","9","10","11"]
    @objc func processTimer(){
        print (" A second has passed")
        if timeCount > 0{
            timeCount -= 1
            timeLabel.text = ("\(timeCount)")
             alla()
            
        }else {
            timer.invalidate() //คำสั่งหยุดเวลา
        }
        print(timeCount)
        timeLabel.text = String(timeCount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ThirdViewController.processTimer), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func yesButton(_ sender: UIButton) {
        if timeCount > 0{
        checkAnswer()
    }
    }
    
    @IBAction func noButton(_ sender: UIButton) {
        if timeCount > 0{
        checkAnswer2()
    }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if timeCount > 0{
         changeDiceFace()
            
    }//end nextButton
    }
    
    @IBAction func newStart(_ sender: UIButton) {
        showImage.image = UIImage(named:"1")
    }
    func changeDiceFace(){ //ฟังก์ชันให้มันเปลี่ยนหน้า
        randomDiceIndex1 = Int(arc4random_uniform(10))
        showImage.image = UIImage(named:diceArray[randomDiceIndex1])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceFace()
    }

    func checkAnswer(){
        playSound(soundFilesName[1])
        print("ดีจัง คุณสายตาปกติ")
        score = score+1
        ProgressHUD.showSuccess("ดีจัง คุณสายตาปกติ")
    }//end checkAnswer
    
    func checkAnswer2(){
        playSound(soundFilesName[0])
        print("คุณตาบอดสี แนะนำไปพบแพทย์")
        scores = scores+1
        ProgressHUD.showError("ว้า คุณน่าจะตาบอดสีนะ")
    }//end checkAnswer
    
    func alla(){
        if timeCount <= 0{
            if score > scores{
                showImage.image = UIImage(named:"true")
            }else if score < scores{
                showImage.image = UIImage(named:"false")
            }else{
                showImage.image = UIImage(named:"q")
            }
        }
        
    }
   
    func playSound(_ playThis :String){
        let soundURL = Bundle.main.url (forResource: playThis, withExtension: "mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }
    

}
