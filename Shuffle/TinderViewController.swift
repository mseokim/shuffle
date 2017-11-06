import UIKit
import Alamofire

class TinderViewController: UIViewController {
    
    var firstView: UIView!
    var secondView: UIView!
    var thirdView: UIView!
    
    var WbtnLike: UIImageView!
    var WbtnLike_edge: UIImageView!
    var WbtnSoso: UIImageView!
    var WbtnSoso_edge: UIImageView!
    var WbtnUnLike: UIImageView!
    var WbtnUnLike_edge: UIImageView!
    var WcolorView_Like: UIView!
    var WimgView_Like: UIView!
    var WcolorView_UnLike: UIView!
    var WimgView_UnLike: UIView!
    var temp: UIView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func moveRight(view: UIView) {
        view.center.x += 400
    }
    
    func moveLeft(view: UIView) {
        view.center.x -= 400
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        button()
        view.backgroundColor = UIColor(red: 243, green: 244, blue: 248)
        title = "SHUFFLE"
        navigationController?.isNavigationBarHidden = true
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setUI() {
        let circle = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * (356/667)))
        circle.image = #imageLiteral(resourceName: "bgCircle.png")
        view.addSubview(circle)
        
        for _ in 0..<3 {
            sleep(1)
        }
        
        let title = UIImageView(frame: CGRect(x: view.frame.width * 0.5 - (view.frame.width * (83.9/375)) * 0.5, y: view.frame.height * (41/667), width: view.frame.width * (83.9/375), height: view.frame.height * (17.1/667)))
        title.image = #imageLiteral(resourceName: "imgLogo.png")
        view.addSubview(title)
        
        let icFire = UIButton(frame: CGRect(x: view.frame.width * (339/375), y: view.frame.height * (38/667), width: view.frame.width * (18/375), height: view.frame.height * (24/667)))
        icFire.addTarget(self, action: #selector(touchFire(button:)), for: .touchUpInside)
        icFire.setImage(#imageLiteral(resourceName: "icFire.png"), for: .normal)
        view.addSubview(icFire)
        
        let icPF = UIButton(frame: CGRect(x: view.frame.width * (18/375), y: view.frame.height * (38/667), width: view.frame.width * (24/375), height: view.frame.height * (24/667)))
        icPF.setImage(#imageLiteral(resourceName: "icProfile.png"), for: .normal)
        view.addSubview(icPF)
        
        let day = UILabel(frame: CGRect(x: 0, y: view.frame.height * (157/667), width: view.frame.width, height: view.frame.height * (19/667)))
        day.text = "TODAY"
        day.font = UIFont(name: "AppleSDGothicNeoR", size: view.frame.height * (16/667))
        day.textAlignment = .center
        day.textColor = UIColor(red: 255, green: 255, blue: 255, a: 0.75)
        view.addSubview(day)
        
        let lampOnAlert = UIAlertController(title: "Shuffle", message: "Shani Lee님,\n환영합니다.", preferredStyle: UIAlertControllerStyle.alert)
        let onAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        lampOnAlert.addAction(onAction)
        present(lampOnAlert, animated: true, completion: nil)
        
        let thirdTwitterView = ThirdTwitterView(frame: CGRect(x: view.frame.width * (35/375), y: view.frame.height * (316.3/667), width: view.frame.width * (306/375), height: view.frame.height * (192.7/667)), pfImage: #imageLiteral(resourceName: "trump.png"), name: "도날드 트럼프", time: "35분 전", content: "")
        thirdTwitterView.layer.cornerRadius = thirdTwitterView.frame.width * 0.025
        thirdTwitterView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        thirdTwitterView.layer.shadowOpacity = 0.5
        thirdTwitterView.layer.shadowOffset = CGSize(width: 0, height: 8)
        thirdTwitterView.layer.shadowRadius = 4
        view.addSubview(thirdTwitterView)
        
        let secondTwitterView = SecondTwitterView(frame: CGRect(x: view.frame.width * (26.5/375), y: view.frame.height * (293.3/667), width: view.frame.width * (322/375), height: view.frame.height * (203.7/667)), pfImage: #imageLiteral(resourceName: "trump.png"), name: "도날드 트럼프", time: "35분 전", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        secondTwitterView.layer.cornerRadius = secondTwitterView.frame.width * 0.025
        secondTwitterView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        secondTwitterView.layer.shadowOpacity = 0.5
        secondTwitterView.layer.shadowOffset = CGSize(width: 0, height: 8)
        secondTwitterView.layer.shadowRadius = 4
        view.addSubview(secondTwitterView)
        
        let twitterView = TwitterView(frame: CGRect(x: view.frame.width * (18/375), y: view.frame.height * (183/667), width: view.frame.width * (339/375), height: view.frame.height * (302/667)), pfImage: #imageLiteral(resourceName: "trump.png"), name: "도날드 트럼프", time: "35분 전", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        twitterView.layer.cornerRadius = twitterView.frame.width * 0.025
        twitterView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        twitterView.layer.shadowOpacity = 0.5
        twitterView.layer.shadowOffset = CGSize(width: 0, height: 8)
        twitterView.layer.shadowRadius = 4
        view.addSubview(twitterView)
        
        firstView = twitterView
        secondView = secondTwitterView
        thirdView = thirdTwitterView
    }
    
    
    
    func button() {
        let imgLike = UIImageView(frame: CGRect(x: view.frame.width * (57/375), y: view.frame.height * (552/667), width: view.frame.width * (72/375), height: view.frame.height * (72/667)))
        imgLike.layer.cornerRadius = imgLike.frame.width * 0.5
        imgLike.backgroundColor = UIColor.white
        imgLike.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        imgLike.layer.shadowOpacity = 0.2
        imgLike.layer.shadowOffset = CGSize(width: 0, height: 8)
        imgLike.layer.shadowRadius = 4
        view.addSubview(imgLike)
        
        let btnLike = UIImageView(frame: CGRect(x: view.frame.width * (75/375), y: view.frame.height * (570/667), width: view.frame.width * (36/375), height: view.frame.height * (36/667)))
        btnLike.image = #imageLiteral(resourceName: "icLike.png")
        view.addSubview(btnLike)
        
        let btnLike_edge = UIButton(frame: CGRect(x: view.frame.width * (57/375), y: view.frame.height * (552/667), width: view.frame.width * (72/375), height: view.frame.height * (72/667)))
        btnLike_edge.alpha = 1
        btnLike_edge.addTarget(self, action: #selector(touchLike(button:)), for: .touchUpInside)
        btnLike_edge.addTarget(self, action: #selector(touchLike_2(button:)), for: .touchUpInside)
        btnLike_edge.layer.cornerRadius = btnLike_edge.frame.width * 0.5
        view.addSubview(btnLike_edge)
        
        let imgPass = UIImageView(frame: CGRect(x: view.frame.width * (161/375), y: view.frame.height * (561/667), width: view.frame.width * (54/375), height: view.frame.height * (54/667)))
        imgPass.layer.cornerRadius = imgPass.frame.width * 0.5
        imgPass.backgroundColor = UIColor.white
        imgPass.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        imgPass.layer.shadowOpacity = 0.2
        imgPass.layer.shadowOffset = CGSize(width: 0, height: 8)
        imgPass.layer.shadowRadius = 4
        view.addSubview(imgPass)
        
        let btnPass = UIImageView(frame: CGRect(x: view.frame.width * (176.1/375), y: view.frame.height * (580.1/667), width: view.frame.width * (24.8/375), height: view.frame.height * (16.9/667)))
        btnPass.image = #imageLiteral(resourceName: "icSee.png")
        view.addSubview(btnPass)
        
        let btnPass_edge = UIButton(frame: CGRect(x: view.frame.width * (161/375), y: view.frame.height * (561/667), width: view.frame.width * (54/375), height: view.frame.height * (54/667)))
        btnPass_edge.alpha = 1
        btnPass_edge.addTarget(self, action: #selector(touchPass(button:)), for: .touchUpInside)
        btnPass_edge.layer.cornerRadius = btnPass_edge.frame.width * 0.5
        view.addSubview(btnPass_edge)
        
        let imgUnLike = UIImageView(frame: CGRect(x: view.frame.width * (247/375), y: view.frame.height * (552/667), width: view.frame.width * (72/375), height: view.frame.height * (72/667)))
        imgUnLike.layer.cornerRadius = imgUnLike.frame.width * 0.5
        imgUnLike.backgroundColor = UIColor.white
        imgUnLike.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, a: 0.15).cgColor
        imgUnLike.layer.shadowOpacity = 0.2
        imgUnLike.layer.shadowOffset = CGSize(width: 0, height: 8)
        imgUnLike.layer.shadowRadius = 4
        view.addSubview(imgUnLike)
        
        let btnUnLike = UIImageView(frame: CGRect(x: view.frame.width * (265/375), y: view.frame.height * (570/667), width: view.frame.width * (36/375), height: view.frame.height * (35.7/667)))
        btnUnLike.image = #imageLiteral(resourceName: "icUnlike.png")
        view.addSubview(btnUnLike)
        
        let btnUnLike_edge = UIButton(frame: CGRect(x: view.frame.width * (247/375), y: view.frame.height * (552/667), width: view.frame.width * (72/375), height: view.frame.height * (72/667)))
        btnUnLike_edge.alpha = 1
        btnUnLike_edge.addTarget(self, action: #selector(touchUnLike(button:)), for: .touchUpInside)
        btnUnLike_edge.addTarget(self, action: #selector(touchUnLike_2(button:)), for: .touchUpInside)
        btnUnLike_edge.layer.cornerRadius = btnPass_edge.frame.width * 0.5
        view.addSubview(btnUnLike_edge)
        
        let colorView_Like = UIImageView(frame: CGRect(x: view.frame.width * (18/375), y: view.frame.height * (183/667), width: view.frame.width * (339/375), height: view.frame.height * (302/667)))
        colorView_Like.backgroundColor = UIColor(red: 74, green: 144, blue: 226, a: 0)
        colorView_Like.layer.cornerRadius = colorView_Like.frame.width * 0.025
        view.addSubview(colorView_Like)
        
        let imgView_Like = UIImageView(frame: CGRect(x: view.frame.width * 0.5 - view.frame.width * (155.5/375) * 0.5, y: view.frame.height * (261/667), width: view.frame.width * (155.5/375), height: view.frame.height * (166.8/667)))
        imgView_Like.image = #imageLiteral(resourceName: "icHillary.png")
        imgView_Like.isHidden = true
        view.addSubview(imgView_Like)
        
        let colorView_UnLike = UIImageView(frame: CGRect(x: view.frame.width * (18/375), y: view.frame.height * (183/667), width: view.frame.width * (339/375), height: view.frame.height * (302/667)))
        colorView_UnLike.backgroundColor = UIColor(red: 255, green: 74, blue: 74, a: 0)
        colorView_UnLike.layer.cornerRadius = colorView_Like.frame.width * 0.025
        view.addSubview(colorView_UnLike)
        
        let imgView_UnLike = UIImageView(frame: CGRect(x: view.frame.width * 0.5 - view.frame.width * (155.5/375) * 0.5, y: view.frame.height * (261/667), width: view.frame.width * (155.5/375), height: view.frame.height * (166.8/667)))
        imgView_UnLike.image = #imageLiteral(resourceName: "icTrump.png")
        imgView_UnLike.isHidden = true
        view.addSubview(imgView_UnLike)
        
        WbtnLike = btnLike
        WbtnSoso = btnPass
        WbtnUnLike = btnUnLike
        WbtnLike_edge = imgLike
        WbtnSoso_edge = imgPass
        WbtnUnLike_edge = imgUnLike
        WcolorView_Like = colorView_Like
        WimgView_Like = imgView_Like
        WcolorView_UnLike = colorView_UnLike
        WimgView_UnLike = imgView_UnLike
    }
    
    
    
    @objc func touchLike(button: UIButton) {
        
        print("Like")
        WbtnLike.pulsate()
        WbtnLike_edge.pulsate()
        
        UIView.animate(withDuration: 0.5) {
            self.moveLeft(view: self.firstView)
            self.firstView.transform = self.firstView.transform.rotated(by: 20)
            self.moveLeft(view: self.WcolorView_Like)
            self.WcolorView_Like.transform = self.WcolorView_Like.transform.rotated(by: 20)
            self.WcolorView_Like.backgroundColor = UIColor(red: 74, green: 144, blue: 226, a: 1)
            self.moveLeft(view: self.WimgView_Like)
            self.WimgView_Like.transform = self.WimgView_Like.transform.rotated(by: 20)
            
        
            self.secondView.frame = CGRect(x: self.view.frame.width * (18/375), y: self.view.frame.height * (183/667), width: self.view.frame.width * (339/375), height: self.view.frame.height * (302/667))
            
            self.thirdView.frame = CGRect(x: self.view.frame.width * (26.5/375), y: self.view.frame.height * (293.3/667), width: self.view.frame.width * (322/375), height: self.view.frame.height * (203.7/667))
            
            
            
            self.firstView = self.secondView
            self.secondView = self.thirdView
            
        }
        
    }
    
    @objc func touchLike_2(button: UIButton) {
        UIView.animate(withDuration: 4) {
            self.WimgView_Like.isHidden = false
        }
    }
    
    
    @objc func touchPass(button: UIButton) {
        print("Plus")
        WbtnSoso.pulsate()
        WbtnSoso_edge.pulsate()
        
        navigationController?.pushViewController(ListViewController(), animated: true)
    }
    
    @objc func touchUnLike(button: UIButton) {
        print("UnLike")
        WbtnUnLike.pulsate()
        WbtnUnLike_edge.pulsate()
        
        UIView.animate(withDuration: 0.5) {
            self.moveRight(view: self.firstView)
            self.firstView.transform = self.firstView.transform.rotated(by: -20)
            self.moveRight(view: self.WcolorView_UnLike)
            self.WcolorView_UnLike.transform = self.WcolorView_UnLike.transform.rotated(by: -20)
            self.WcolorView_UnLike.backgroundColor = UIColor(red: 255, green: 74, blue: 74, a: 1)
            self.moveRight(view: self.WimgView_UnLike)
            self.WimgView_UnLike.transform = self.WimgView_UnLike.transform.rotated(by: -20)
            
            self.secondView.frame = CGRect(x: self.view.frame.width * (18/375), y: self.view.frame.height * (183/667), width: self.view.frame.width * (339/375), height: self.view.frame.height * (302/667))
            
            self.thirdView.frame = CGRect(x: self.view.frame.width * (26.5/375), y: self.view.frame.height * (293.3/667), width: self.view.frame.width * (322/375), height: self.view.frame.height * (203.7/667))
            
            self.firstView = self.secondView
            self.secondView = self.thirdView
        }
        
        let lampRemoveAlert = UIAlertController(title: "막말로 생각", message: "얼마나 심하였나요?", preferredStyle: UIAlertControllerStyle.alert)
        
        let offAction = UIAlertAction(title: "하트", style: UIAlertActionStyle.default, handler: nil)
        let onAction = UIAlertAction(title: "다이아몬드", style: UIAlertActionStyle.default)
        let removeAction = UIAlertAction(title: "클로버", style: UIAlertActionStyle.destructive, handler: nil)
        let spade = UIAlertAction(title: "스페이드", style: UIAlertActionStyle.destructive, handler: nil)
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        lampRemoveAlert.addAction(spade)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
    
    @objc func touchUnLike_2(button: UIButton) {
        UIView.animate(withDuration: 4) {
            self.WimgView_UnLike.isHidden = false
        }
    }
    
    @objc func touchFire(button: UIButton) {
        self.navigationController?.pushViewController(ScoreViewController(), animated: true)
    }

}








public class TwitterView: UIView {
    var pfImage: UIImage!
    var name: String!
    var time: String!
    var content: String!
    
    init(frame: CGRect, pfImage: UIImage, name: String, time: String, content: String) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 255, green: 255, blue: 255, a: 1)
        self.pfImage = pfImage
        self.name = name
        self.time = time
        self.content = content
        setLayOut()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayOut() {
        
        let backgroundColor = UIView(frame: CGRect(x: 0, y: frame.height * (88/302), width: frame.width, height: frame.height * (214/302)))
        backgroundColor.backgroundColor = UIColor(red: 247, green: 247, blue: 247)
        backgroundColor.layer.cornerRadius = backgroundColor.frame.width * 0.025
        addSubview(backgroundColor)
        
        let profile = UIImageView(frame: CGRect(x: frame.width * (19.6/339), y: frame.height * (19.6/302), width: frame.width * (47.5/339), height: frame.height * (47.5/302)))
        profile.image = pfImage
        profile.layer.cornerRadius = profile.frame.width * 0.5
        profile.layer.masksToBounds = false
        profile.clipsToBounds = true
        profile.layer.borderColor = UIColor.white.cgColor
        addSubview(profile)
        
        
        let nameL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (28.1/302), width: frame.width * (210/339), height: frame.height * (19/302)))
        nameL.text = name
        nameL.textColor = .black
        addSubview(nameL)
        
        let timeL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (45.8/302), width: frame.width * (150/339), height: frame.height * (16/302)))
        timeL.text = time
        timeL.textColor = UIColor(red: 0, green: 0, blue: 0, a: 0.35)
        addSubview(timeL)
        
        let contentL = UILabel(frame: CGRect(x: frame.width * (15/339), y: frame.height * (130/302), width: frame.width * (309/339), height: frame.height * (150/302)))
        contentL.numberOfLines = 5
        contentL.lineBreakMode = .byClipping
        contentL.text = content
        contentL.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.6)
        contentL.font = UIFont(name: "AppleSDGothicNeoR", size: 16)
        addSubview(contentL)
        
    }
    
    
    
}


public class SecondTwitterView: UIView {
    var pfImage: UIImage!
    var name: String!
    var time: String!
    var content: String!
    
    init(frame: CGRect, pfImage: UIImage, name: String, time: String, content: String) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 255, green: 255, blue: 255, a: 1)
        self.pfImage = pfImage
        self.name = name
        self.time = time
        self.content = content
        setLayOut()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setLayOut() {
        
        let backgroundColor = UIView(frame: CGRect(x: 0, y: frame.height * (88/302), width: frame.width, height: frame.height * (214/302)))
        backgroundColor.backgroundColor = UIColor(red: 247, green: 247, blue: 247)
        backgroundColor.layer.cornerRadius = backgroundColor.frame.width * 0.025
        addSubview(backgroundColor)
        
        let profile = UIImageView(frame: CGRect(x: frame.width * (19.6/339), y: frame.height * (19.6/302), width: frame.width * (47.5/339), height: frame.height * (47.5/302)))
        profile.image = pfImage
        profile.layer.cornerRadius = profile.frame.width * 0.5
        profile.layer.masksToBounds = false
        profile.clipsToBounds = true
        profile.layer.borderColor = UIColor.white.cgColor
        addSubview(profile)
        
        
        let nameL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (28.1/302), width: frame.width * (210/339), height: frame.height * (19/302)))
        nameL.text = name
        nameL.textColor = .black
        addSubview(nameL)
        
        let timeL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (45.8/302), width: frame.width * (150/339), height: frame.height * (16/302)))
        timeL.text = time
        timeL.textColor = UIColor(red: 0, green: 0, blue: 0, a: 0.35)
        addSubview(timeL)
        
        let contentL = UILabel(frame: CGRect(x: frame.width * (15/339), y: frame.height * (130/302), width: frame.width * (309/339), height: frame.height * (150/302)))
        contentL.numberOfLines = 5
        contentL.lineBreakMode = .byClipping
        contentL.text = content
        contentL.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.6)
        contentL.font = UIFont(name: "AppleSDGothicNeoR", size: 16)
        addSubview(contentL)
    }
    
}

class ThirdTwitterView: UIView {
    var pfImage: UIImage!
    var name: String!
    var time: String!
    var content: String!
    
    init(frame: CGRect, pfImage: UIImage, name: String, time: String, content: String) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 255, green: 255, blue: 255, a: 1)
        self.pfImage = pfImage
        self.name = name
        self.time = time
        self.content = content
        setLayOut()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayOut() {
        
        let backgroundColor = UIView(frame: CGRect(x: 0, y: frame.height * (88/302), width: frame.width, height: frame.height * (214/302)))
        backgroundColor.backgroundColor = UIColor(red: 247, green: 247, blue: 247)
        backgroundColor.layer.cornerRadius = backgroundColor.frame.width * 0.025
        addSubview(backgroundColor)
        
        let profile = UIImageView(frame: CGRect(x: frame.width * (19.6/339), y: frame.height * (19.6/302), width: frame.width * (47.5/339), height: frame.height * (47.5/302)))
        profile.image = pfImage
        profile.layer.cornerRadius = profile.frame.width * 0.5
        profile.layer.masksToBounds = false
        profile.clipsToBounds = true
        profile.layer.borderColor = UIColor.white.cgColor
        addSubview(profile)
        
        
        let nameL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (28.1/302), width: frame.width * (210/339), height: frame.height * (19/302)))
        nameL.text = name
        nameL.textColor = .black
        addSubview(nameL)
        
        let timeL = UILabel(frame: CGRect(x: frame.width * (75.4/339), y: frame.height * (45.8/302), width: frame.width * (150/339), height: frame.height * (16/302)))
        timeL.text = time
        timeL.textColor = UIColor(red: 0, green: 0, blue: 0, a: 0.35)
        addSubview(timeL)
        
        let contentL = UILabel(frame: CGRect(x: frame.width * (15/339), y: frame.height * (130/302), width: frame.width * (309/339), height: frame.height * (150/302)))
        contentL.numberOfLines = 5
        contentL.lineBreakMode = .byClipping
        contentL.text = content
        contentL.textColor = UIColor(red: 54, green: 13, blue: 13, a: 0.6)
        contentL.font = UIFont(name: "AppleSDGothicNeoR", size: 16)
        addSubview(contentL)
    }
}
