//use in view controller


import UIKit

class ViewController: UIViewController {
    
    
    var label = UILabel(frame: CGRectMake(0, 0, 200, 21))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "I'am a test label"
        self.view.addSubview(label)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getNewPhotoAction(sender: AnyObject) {
        self.label.text = "I'am clicked"
    }


}

