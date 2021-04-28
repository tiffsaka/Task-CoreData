//
//  TaskTableViewCell.swift
//  Task-CoreData
//
//  Created by Tiffany Sakaguchi on 4/27/21.
//

import UIKit
import CoreData

protocol TaskCompletionDelegate: AnyObject {
    func taskCellButtonTapped(_ sender: TaskTableViewCell)
}

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var completionButton: UIButton!
    
    weak var delegate: TaskCompletionDelegate?
    
    var task: Task? {
        didSet {
            updateViews()
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func completionButtonTapped(_ sender: Any) {
        delegate?.taskCellButtonTapped(self)
    }
    
    func updateViews() {
        guard let task = task else { return }
        taskNameLabel.text = task.name
        
        if task.isComplete {
            completionButton.setBackgroundImage(UIImage(systemName: "checkmark.square"), for: .normal)
            completionButton.tintColor = .black
        } else {
            completionButton.setBackgroundImage(UIImage(systemName: "square"), for: .normal)
            completionButton.tintColor = .black
        }
        
    }
    
    
}
