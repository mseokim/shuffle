//
//  LoginViewController.swift
//  Shuffle
//
//  Created by 김민서 on 2017. 11. 5..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        setUI()
        view.backgroundColor = UIColor(red: 243, green: 244, blue: 248, a: 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        let logoBack = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * (230/667)))
        logoBack.backgroundColor = UIColor(red: 255, green: 88, blue: 74, a: 1)
        view.addSubview(logoBack)
        
        let logo = UIImageView(frame: CGRect(x: view.frame.width * (135/375), y: view.frame.height * (70/667), width: view.frame.width * (105/375), height: view.frame.height * (105/667)))
        logo.image = #imageLiteral(resourceName: "icon.png")
        logo.layer.cornerRadius = logo.frame.width * 0.5
        logo.clipsToBounds = false
        logo.layer.masksToBounds = true
        logo.layer.borderColor = UIColor(red: 255, green: 88, blue: 74).cgColor
        logo.layer.borderWidth = 1
        logo.layer.shadowColor = UIColor.black.cgColor
        logo.layer.shadowOpacity = 0.5
        logo.layer.shadowOffset = CGSize(width: 0, height: 10)
        logo.layer.shadowRadius = 4
        view.addSubview(logo)
        
        let lblEmail = UILabel(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * (258/667), width: view.frame.width, height: view.frame.height * (18/667)))
        lblEmail.text = "E-mail"
        lblEmail.textColor = UIColor(red: 255, green: 74, blue: 74, a: 1)
        lblEmail.font = UIFont(name: "AppleSDGothicNeoR", size: 12)
        view.addSubview(lblEmail)
        
        let txfEmail = UITextField(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * (284 / 667), width: view.frame.width * (343/375), height: view.frame.height * (48/667)))
        txfEmail.layer.borderColor = UIColor(red: 54, green: 13, blue: 13, a: 0.15).cgColor
        txfEmail.layer.borderWidth = 1
        view.addSubview(txfEmail)
        
        let lblPw = UILabel(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * (356/667), width: view.frame.width, height: view.frame.height * (18/667)))
        lblPw.text = "Password"
        lblPw.textColor = UIColor(red: 255, green: 74, blue: 74, a: 1)
        lblPw.font = UIFont(name: "AppleSDGothicNeoR", size: 12)
        view.addSubview(lblPw)
        
        let txfPw = UITextField(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * (382 / 667), width: view.frame.width * (343/375), height: view.frame.height * (48/667)))
        txfPw.layer.borderColor = UIColor(red: 54, green: 13, blue: 13, a: 0.15).cgColor
        txfPw.layer.borderWidth = 1
        view.addSubview(txfPw)
        
        let btnLogin = UIButton(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * (538/667), width: view.frame.width * (163.5/375), height: view.frame.height * (48/667)))
        let color = UIColor(red: 255, green: 74, blue: 74)
        btnLogin.setTitle("로그인", for: .normal)
        btnLogin.layer.borderWidth = 1
        btnLogin.layer.borderColor = UIColor(red: 255, green: 74, blue: 74).cgColor
        btnLogin.setTitleColor(color, for: .normal)
        btnLogin.layer.cornerRadius = view.frame.width * 5/375
        btnLogin.titleLabel?.font = UIFont(name: "NotoSansCJKkrR", size: 20)
        view.addSubview(btnLogin)
        
        let btnRegister = UIButton(frame: CGRect(x: view.frame.width * (196/375), y: view.frame.height * (538/667), width: view.frame.width * (163.5/375), height: view.frame.height * (48/667)))
        btnRegister.setTitle("회원가입", for: .normal)
        btnRegister.layer.borderWidth = 1
        btnRegister.layer.borderColor = UIColor(red: 255, green: 74, blue: 74).cgColor
        btnRegister.setTitleColor(.white, for: .normal)
        btnRegister.backgroundColor = color
        btnRegister.layer.cornerRadius = view.frame.width * 5/375
        btnRegister.titleLabel?.font = UIFont(name: "NotoSansCJKkrR", size: 20)
        view.addSubview(btnRegister)
        
        let twitterLogin = UIButton(frame: CGRect(x: view.frame.width * (16/375), y: view.frame.height * 603 / 667, width: view.frame.width * 343 / 375, height: view.frame.height * 48 / 667))
        twitterLogin.setImage(#imageLiteral(resourceName: "twitterLogin.png"), for: .normal)
        twitterLogin.layer.borderColor = UIColor.white.cgColor
        twitterLogin.layer.borderWidth = 1
        twitterLogin.layer.masksToBounds = false
        twitterLogin.clipsToBounds = true
        twitterLogin.layer.cornerRadius = 10
        twitterLogin.addTarget(self, action: #selector(login(button:)), for: .touchUpInside)
        view.addSubview(twitterLogin)
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 0.5))
        btn.addTarget(self, action: #selector(hi(button:)), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func login(button: UIButton) {
        let lampOnAlert = UIAlertController(title: "주의", message: "App을 통하여\n'twitter'을(를) 여시는 것을\n허락하시겠습니까?", preferredStyle: UIAlertControllerStyle.alert)
        let onAction = UIAlertAction(title: "거절", style: UIAlertActionStyle.default, handler: nil)
        let offAction = UIAlertAction(title: "수락", style: UIAlertActionStyle.default, handler: nil)
        lampOnAlert.addAction(onAction)
        lampOnAlert.addAction(offAction)
        present(lampOnAlert, animated: true, completion: nil)
    }

    @objc func hi(button: UIButton) {
        _ = navigationController?.pushViewController(TwitterViewController(), animated: true)
    }
}
