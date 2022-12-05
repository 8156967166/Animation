//
//  Example3AnimationViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class Example3AnimationViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var fruitsArray = [FruitTableViewCellModel]()
    override func viewDidLoad() {
        super.viewDidLoad()

        setFruitsModel()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        animateTable()
    }
        
    func animateTable() {
        tableView.reloadData()
            
        let cells = tableView.visibleCells
        let tableHeight: CGFloat = tableView.bounds.size.height
            
        for i in cells {
            let cell: AnimationExample3TableViewCell = i as! AnimationExample3TableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
            
        var index = 0
            
        for a in cells {
            let cell: AnimationExample3TableViewCell = a as! AnimationExample3TableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
                
            index += 1
        }
    }
    
    func setFruitsModel() {
        let fruit1 = FruitTableViewCellModel(strName: "Apple", cellType: .fruitCell)
        let fruit2 = FruitTableViewCellModel(strName: "Banana", cellType: .fruitCell)
        let fruit3 = FruitTableViewCellModel(strName: "Oranges", cellType: .fruitCell)
        let fruit4 = FruitTableViewCellModel(strName: "Strawberries", cellType: .fruitCell)
        let fruit5 = FruitTableViewCellModel(strName: "Raspberries", cellType: .fruitCell)
        let fruit6 = FruitTableViewCellModel(strName: "Papaya", cellType: .fruitCell)
        let fruit7 = FruitTableViewCellModel(strName: "Pineapple", cellType: .fruitCell)
        let fruit8 = FruitTableViewCellModel(strName: "Olive", cellType: .fruitCell)
        let fruit9 = FruitTableViewCellModel(strName: "Dragon fruit", cellType: .fruitCell)
        let fruit10 = FruitTableViewCellModel(strName: "Mango", cellType: .fruitCell)
        let fruit11 = FruitTableViewCellModel(strName: "Avocado", cellType: .fruitCell)
        
        fruitsArray = [fruit1, fruit2, fruit3, fruit4, fruit5, fruit6, fruit7, fruit8, fruit9, fruit10, fruit11]
    }
    
}


extension Example3AnimationViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = fruitsArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.identifier, for: indexPath) as! AnimationExample3TableViewCell
        cell.cellModel = cellModel
        return cell
    }
}
