
import UIKit

class InstructionView: UIViewController
{
  
  var pageIndex : Int = 0
  var titleText : String = ""
  var imageFile : String = ""
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    view.backgroundColor = UIColor(patternImage: UIImage(named: imageFile)!)
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
    label.textColor = .white
    label.text = titleText
    label.textAlignment = .center
    view.addSubview(label)
    
    let button = UIButton(type: .system)
    button.frame = CGRect(x: 20, y: view.frame.height - 110, width: view.frame.width - 40, height: 50)
    button.backgroundColor = UIColor(red: 138/255.0, green: 181/255.0, blue: 91/255.0, alpha: 1)
    button.setTitle(titleText, for: UIControlState())
    button.addTarget(self, action: Selector("Action:"), for: .touchUpInside)
    self.view.addSubview(button)
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
}
