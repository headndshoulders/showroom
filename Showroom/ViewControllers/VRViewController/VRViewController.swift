import UIKit

class VRViewController: UIViewController {
  
  @IBOutlet weak var webView: UIWebView!
  let urlString = "https://ramotion.github.io/vr-menu-demo/main.html"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    MenuPopUpViewController.showPopup(on: self, url: urlString) { [weak self] in
      self?.dismiss(animated: true, completion: nil)
      self?.dismiss(animated: true, completion: nil)
    }
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    ThingersTapViewController.showPopup(on: self)

    if let url = URL(string: urlString) {
      let request = URLRequest(url: url)
      webView.loadRequest(request)
    }
  }
  
  override open var shouldAutorotate: Bool {
    return true
  }
  
//  override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//    return .landscapeLeft
//  }
//  
//  override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
//    return .landscapeLeft
//  }
}
