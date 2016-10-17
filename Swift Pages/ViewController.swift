
import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource
{
  var pageViewController : UIPageViewController?
  var pageTitles : Array<String> = ["God vs Man", "Cool Breeze", "Fire Sky"]
  var pageImages : Array<String> = ["page1.png", "page2.png", "page3.png"]
  var currentIndex : Int = 0
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
    pageViewController!.dataSource = self
    
    let startingViewController: InstructionView = viewControllerAtIndex(0)!
    let viewControllers = [startingViewController]
    pageViewController!.setViewControllers(viewControllers , direction: .Forward, animated: false, completion: nil)
    pageViewController!.view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height);
    
    addChildViewController(pageViewController!)
    view.addSubview(pageViewController!.view)
    pageViewController!.didMoveToParentViewController(self)
  }
  
  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  {
    var index = (viewController as! InstructionView).pageIndex
    
    if (index == 0) || (index == NSNotFound) {
      return nil
    }
    
    index -= 1
    
    return viewControllerAtIndex(index)
  }
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  {
    var index = (viewController as! InstructionView).pageIndex
    
    if index == NSNotFound {
      return nil
    }
    
    index += 1
    
    if (index == self.pageTitles.count) {
      return nil
    }
    
    return viewControllerAtIndex(index)
  }
  
  func viewControllerAtIndex(index: Int) -> InstructionView?
  {
    if self.pageTitles.count == 0 || index >= self.pageTitles.count
    {
      return nil
    }
    
    // Create a new view controller and pass suitable data.
    let pageContentViewController = InstructionView()
    pageContentViewController.imageFile = pageImages[index]
    pageContentViewController.titleText = pageTitles[index]
    pageContentViewController.pageIndex = index
    currentIndex = index
    
    return pageContentViewController
  }
  
  func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
  {
    return self.pageTitles.count
  }
  
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
  {
    return 0
  }
  
}
