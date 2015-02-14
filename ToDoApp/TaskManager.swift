import UIKit

var taskManager: TaskManager = TaskManager()

struct task {
    var name = ""
    var desc = ""
}
class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}
