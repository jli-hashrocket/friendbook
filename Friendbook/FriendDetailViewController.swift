import UIKit

class FriendDetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    var name = "Jeff"
    var birthday = "April 29th"
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        self.nameLabel.text = "\(self.name)'s birthday is"
        self.birthdayLabel.text = self.birthday
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
