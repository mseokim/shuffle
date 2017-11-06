//
//  ScoreViewController.swift
//  Shuffle
//
//  Created by 김민서 on 2017. 11. 5..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit

var cardView: UIView!
class ScoreViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        view.backgroundColor = UIColor(red: 243, green: 244, blue: 248)
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let CardView = TupyoView(frame: CGRect(x: 0, y: view.frame.height, width: view.frame.width, height: view.frame.height), name: "클로버", hint: "\"도를 지나친 막말입니다.\"", card: #imageLiteral(resourceName: "icFire.png"))
        view.addSubview(CardView)
        
        cardView = CardView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 305 / 667))
        imageView.backgroundColor = UIColor(red: 255, green: 255, blue: 255)
        imageView.layer.shadowRadius = -1
        imageView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.11).cgColor
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowOffset = CGSize(width: 0, height: -1)
        view.addSubview(imageView)
        
        let title = UILabel(frame: CGRect(x: 0, y: view.frame.height * 32 / 667, width: view.frame.width, height: view.frame.height * 20 / 667))
        title.text = "게시물"
        title.font = UIFont(name: "AppleSDGothicNeoM", size: 17)
        title.textAlignment = .center
        title.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.4)
        view.addSubview(title)
        
        let btn = UIButton(frame: CGRect(x: view.frame.width * 9 / 375, y: view.frame.height * 31.5 / 667, width: view.frame.width * 12 / 375, height: view.frame.height * 21 / 667))
        btn.setImage(#imageLiteral(resourceName: "cancel.png"), for: .normal)
        btn.addTarget(self, action: #selector(backButton(button:)), for: .touchUpInside)
        view.addSubview(btn)
        
        
        let pfImage = UIImageView(frame: CGRect(x: view.frame.width * 16/375, y: view.frame.height * 77 / 677, width: view.frame.width * 46 / 375, height: view.frame.height * 46 / 667))
        pfImage.image = #imageLiteral(resourceName: "trump.png")
        pfImage.layer.cornerRadius = pfImage.frame.width * 0.5
        pfImage.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, a: 0.11).cgColor
        pfImage.layer.borderWidth = 1
        pfImage.layer.masksToBounds = false
        pfImage.clipsToBounds = true
        view.addSubview(pfImage)
        
        let name = UILabel(frame: CGRect(x: view.frame.width * 71 / 375, y: view.frame.height * 84 / 667, width: view.frame.width * 0.6, height: view.frame.height * 19 / 667))
        name.font = UIFont(name: "AppleSDGothicNeoR", size: 16)
        name.text = "도널드 트럼프"
        view.addSubview(name)
        
        let time = UILabel(frame: CGRect(x: view.frame.width * 71 / 375, y: view.frame.height * 105 / 667, width: view.frame.width * 0.6, height: view.frame.height * 15 / 667))
        time.font = UIFont(name: "AppleSDGothicNeoR", size: 12)
        time.text = "35분 전"
        time.textColor = UIColor(red: 0, green: 0, blue: 0, a: 0.35)
        view.addSubview(time)
        
        let content = UILabel(frame: CGRect(x: view.frame.width * 16 / 375, y: view.frame.height * 139 / 667, width: view.frame.width * 328 / 667, height: view.frame.height * 140 / 667))
        content.numberOfLines = 5
        content.lineBreakMode = .byClipping
        content.font = UIFont(name: "AppleSDGothicNeoR", size: 16)
        content.text = "한국은 쓰레기야\n내가 없거든"
        content.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.6)
        view.addSubview(content)
        
        
        let iconCard = UIImageView(frame: CGRect(x: view.frame.width * 138 / 375, y: view.frame.height * 378 / 667, width: view.frame.width * 84 / 375, height: view.frame.height * 84 / 667))
        iconCard.image = #imageLiteral(resourceName: "icPlaceholder.png")
        view.addSubview(iconCard)
        
        let hint = UILabel(frame: CGRect(x: 0, y: view.frame.height * 483 / 667, width: view.frame.width, height: view.frame.height * 50 / 667))
        hint.text = "아직 투표를 하지 않았습니다\n지금 투표하세요!"
        hint.numberOfLines = 2
        hint.textAlignment = .center
        hint.font = UIFont(name: "AppleSDGothicNeoM", size: 18)
        hint.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.4)
        view.addSubview(hint)
        
        let btnLast = UIButton(frame: CGRect(x: 0, y: view.frame.height * 607 / 667, width: view.frame.width, height: view.frame.height * 60 / 667))
        btnLast.backgroundColor = UIColor(red: 255, green: 88, blue: 74)
        btnLast.setTitle("투표하기", for: .normal)
        btnLast.setTitleColor(UIColor.white, for: .normal)
        btnLast.titleLabel?.font = UIFont(name: "AppleSDGothicNeoB", size: 22)
        btnLast.addTarget(self, action: #selector(nextButton(button:)), for: .touchUpInside)
        view.addSubview(btnLast)
        
        
    }

    @objc func backButton(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func nextButton(button: UIButton) {
        UIView.animate(withDuration: 0.5) {
            cardView.center.y -= self.view.frame.height
        }
    }

}


class TupyoView: UIView {
    var name: String!
    var hint: String!
    var card: UIImage!
    
    init(frame: CGRect, name: String, hint: String, card: UIImage) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 255, green: 88, blue: 74)
        self.name = name
        self.hint = hint
        self.card = card
        setLayOut()
        slideCard()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayOut() {
        let title = UILabel(frame: CGRect(x: 0, y: frame.height * 79 / 667, width: frame.width, height: frame.height * 45 / 667))
        title.text = name
        title.font = UIFont(name: "AppleSDGothicNeoB", size: 40)
        title.textAlignment = .center
        title.textColor = .white
        addSubview(title)
        
        let exta = UILabel(frame: CGRect(x: 0, y: frame.height * 112 / 667, width: frame.width, height: frame.height * 45 / 667))
        exta.textAlignment = .center
        exta.textColor = UIColor(red: 255, green: 255, blue: 255, a: 0.5)
        exta.font = UIFont(name: "AppleSDGothicNeoR", size: 40)
        exta.text = hint
        addSubview(exta)
        
        let lastBtn = UIButton(frame: CGRect(x: 0, y: frame.height * 607 / 667, width: frame.width, height: frame.height * 60 / 667))
        lastBtn.setTitleColor(.black, for: .normal)
        lastBtn.backgroundColor = .white
        lastBtn.titleLabel?.font = UIFont(name: "AppleSDGothicNeoB", size: 22)
        lastBtn.setTitle("투표하기", for: .normal)
        addSubview(lastBtn)
        
        let btnX = UIButton(frame: CGRect(x: frame.width * 335 / 375, y: frame.height * 30 / 667, width: frame.width * 22 / 375, height: frame.height * 22 / 667))
        btnX.setTitle("X", for: .normal)
        btnX.setTitleColor(.white, for: .normal)
        btnX.titleLabel?.font = UIFont(name: "AppleSDGothicNeoB", size: frame.height * 22 / 667)
        btnX.addTarget(self, action: #selector(lastButton(button:)), for: .touchUpInside)
        addSubview(btnX)
        
        
    }
    
    @objc func lastButton(button: UIButton) {
        
        UIView.animate(withDuration: 0.5) {
            cardView.center.y += self.frame.height
        }
        
        
    }
    
    func slideCard() {
        var i = 0
        let card = [#imageLiteral(resourceName: "cardSpade.png"), #imageLiteral(resourceName: "cardClover.png"), #imageLiteral(resourceName: "cardDiamond.png"), #imageLiteral(resourceName: "cardHeart.png")] // 0스페이드 1클로버 2다이아 3하트
        
        
        
        
        let imgView_center = UIImageView(frame: CGRect(x: -(frame.width * 196 / 375), y: frame.height * 184 / 667, width: frame.width * 240 / 375, height: frame.height * 362 / 667))
        addSubview(imgView_center)
        
        let imgView_right = UIImageView(frame: CGRect(x: frame.width * 68 / 375, y: frame.height * 184 / 667, width: frame.width * 240 / 375, height: frame.height * 362 / 667))
        addSubview(imgView_right)
        
        let imgView_left = UIImageView(frame: CGRect(x: frame.width * 332 / 375, y: frame.height * 184 / 667, width: frame.width * 240 / 375, height: frame.height * 362 / 667))
        addSubview(imgView_left)
        
        func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                if (i < card.count || i >= 0) {
                    i += 1
                }
                print("Swiped Left")
            case UISwipeGestureRecognizerDirection.right:
                if (i < card.count || i >= 0) {
                    i += 1
                }
                print("Swiped Right")
            default:
                break
            }
        }
        }
        
        
        switch i {
        case 0:
            imgView_left.isHidden = true
            imgView_center.image = #imageLiteral(resourceName: "cardSpade.png")
            imgView_right.image = #imageLiteral(resourceName: "cardClover.png")
        case 1:
            imgView_left.isHidden = false
            imgView_left.image = #imageLiteral(resourceName: "cardSpade.png")
            imgView_center.image = #imageLiteral(resourceName: "cardClover.png")
            imgView_right.image = #imageLiteral(resourceName: "cardDiamond.png")
        case 2:
            imgView_left.image = #imageLiteral(resourceName: "cardClover.png")
            imgView_center.image = #imageLiteral(resourceName: "cardDiamond.png")
            imgView_right.image = #imageLiteral(resourceName: "cardHeart.png")
            imgView_right.isHidden = false
        case 3:
            imgView_left.image = #imageLiteral(resourceName: "cardDiamond.png")
            imgView_center.image = #imageLiteral(resourceName: "cardHeart.png")
            imgView_right.isHidden = true
        default:
            print("error")
        }
        
    }
    
    
}
