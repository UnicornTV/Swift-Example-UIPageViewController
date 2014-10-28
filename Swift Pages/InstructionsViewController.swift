
import UIKit

class InstructionsViewController: UIViewController
{
  
  @IBOutlet var backgroundImageView : UIImageView!
  @IBOutlet var titleLabel : UILabel!
  
  var pageIndex : Int = 0
  var titleText : String = ""
  var imageFile : String = ""
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    backgroundImageView.image = UIImage(named: imageFile)
    titleLabel.text = titleText
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
}
