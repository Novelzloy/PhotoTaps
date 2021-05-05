import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
   
    
     
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        let activity = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        activity.completionWithItemsHandler = {(_, bool, _, _) in
            if bool == true {
                print("Успех")
            }
            
        }
        
        present(activity, animated: true, completion: nil)
        
    }
    
    
}
