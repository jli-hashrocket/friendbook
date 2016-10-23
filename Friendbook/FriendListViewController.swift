import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myFriends = ["Jason","Phil","John","Eugene"]
    
    var selectedFriend = "Jeff"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = myFriends[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedFriend = myFriends[indexPath.row]

        self.performSegue(withIdentifier: "friendListToFriendDetailSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! FriendDetailViewController
        detailViewController.name = self.selectedFriend
        
        if self.selectedFriend == "Jason" {
            detailViewController.birthday = "January 4th"
        } else if self.selectedFriend == "Phil" {
            detailViewController.birthday = "October 11th"
        } else if self.selectedFriend == "John" {
            detailViewController.birthday = "April 19th"
        } else if self.selectedFriend == "Eugene" {
            detailViewController.birthday = "Sept 9th"
        }
    }

}
