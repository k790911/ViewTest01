//
//  ViewController.swift
//  ViewTest01
//
//  Created by 김재훈 on 2022/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    let mySelector: Selector = #selector(ViewController.btn1Touched)
    
    var myImageView1: UIImageView = {
        let iv = UIImageView(frame: CGRect(x: 10, y: 100, width: 400, height: 200))
        iv.image = UIImage(named: "4.JPG")
        iv.backgroundColor = .brown

        return iv
    }()
    
    var myButton1: UIButton {
        let bt = UIButton(frame: CGRect(x: 10, y: 100, width: 200, height: 50))
        bt.setTitle("다음1", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .orange
        // 여기에 넣으려면 해당 변수를 lazy로 정의 해야함???
        print(self)
        bt.addTarget(self, action: mySelector, for: .touchUpInside)
        return bt
    }
    
    var myButton2: UIButton {
        let bt = UIButton(frame: CGRect(x: 10, y: 500, width: 200, height: 50))
        bt.setTitle("다음2", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .orange
        print(self)
        bt.addTarget(self, action: mySelector, for: .touchUpInside)
        return bt
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myImageView1)
        myImageView1.addSubview(myButton1)
        
        //myImageView1.bringSubviewToFront(myButton1)
        myImageView1.isUserInteractionEnabled = true
        
        view.addSubview(myButton2)
        
    }
    
    @objc func btn1Touched(sender: UIButton) {
        print("The button 1 is touched.")
    }
    

}

