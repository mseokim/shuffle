import UIKit

class TwitterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imgView = UIImageView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height - 20))
        imgView.image = #imageLiteral(resourceName: "icon_2.png")
        view.addSubview(imgView)
        
        let button = UIButton(frame: CGRect(x: view.frame.width * 0.7, y: view.frame.height * 0.8, width: view.frame.width * 0.3, height: view.frame.height * 0.2))
        button.alpha = 1
        button.addTarget(self, action: #selector(move(button:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func move(button: UIButton) {
        navigationController?.pushViewController(TinderViewController(), animated: true)
    }
}
