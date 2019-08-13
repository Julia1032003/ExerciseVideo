//
//  ExerciseTableViewController.swift
//  Healthier
//
//  Created by Julia Wang on 2019/8/12.
//  Copyright © 2019 Julia Wang. All rights reserved.
//

import UIKit
import SafariServices


class ExerciseTableViewController: UITableViewController  {
    
    
    var exercisetopic = [Exercise(topic: "七分鐘運動Lesson1", intro: "初學者入門" , videophoto: "sevenMinExercise0.jpg" , videourl: URL(string:"https://youtu.be/oYQ32VXMxJ0")!),Exercise(topic: "七分鐘運動Lesson2", intro: "經典七分鐘運動", videophoto: "sevenMinExercise1.jpg",videourl: URL(string:"https://youtu.be/P5st7m7PmuE")!),Exercise(topic: "七分鐘運動Lesson3", intro: "初學者腹部微調", videophoto: "sevenMinExercise2.jpg",videourl: URL(string:"https://youtu.be/VLrONQj-_fM")!),Exercise(topic: "七分鐘運動Lesson4", intro: "重點練腹部", videophoto: "sevenMinExercise3.jpg" , videourl: URL(string:"https://youtu.be/Mvad7d1Kw6A")!),Exercise(topic: "七分鐘運動Lesson5", intro: "爆汗版", videophoto: "sevenMinExercise4.jpg" , videourl: URL(string:"https://youtu.be/X1kum5-yLfk")!),Exercise(topic: "七分鐘運動Lesson6", intro: "重點練背肌", videophoto: "sevenMinExercise5.jpg" , videourl: URL(string:"https://youtu.be/ATVFe8z1N8A")!),Exercise(topic: "七分鐘運動Lesson7", intro: "重點鍊臀部", videophoto: "sevenMinExercise6.jpg" , videourl: URL(string:"https://youtu.be/LeGKguv1JaY")!),Exercise(topic: "七分鐘運動Lesson8", intro: "重點練腿部", videophoto: "sevenMinExercise7.jpg", videourl: URL(string:"https://youtu.be/37NplG7wY2A")!),Exercise(topic: "七分鐘運動Lesson9", intro: "重點練手臂", videophoto: "sevenMinExercise8.jpg",videourl: URL(string:"https://youtu.be/x4mCFpazHTA")!),Exercise(topic: "七分鐘運動Lesson10", intro: "加強練手臂", videophoto: "sevenMinExercise9.jpg",videourl: URL(string:"https://youtu.be/ux5M-2kxxb0")!)]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 180
        tableView.estimatedRowHeight = 0

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exercisetopic.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseCell", for: indexPath) as! ExerciseTableViewCell
        
        let athlete = exercisetopic[indexPath.row]
        
        cell.exerciseLabel.text = athlete.topic
        cell.exerciseIntro.text = athlete.intro
        cell.exerciseImageView.image = UIImage(named: athlete.videophoto)

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = self.tableView.indexPathForSelectedRow{
                    let exercisevideo = exercisetopic[indexPath.row]
                    let url = exercisevideo.videourl
                    let safariVC = SFSafariViewController(url: url)
                    
                    present(safariVC, animated: true, completion: nil)
                    
                }
      
    }
    
}
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        }*/
    

    
     


