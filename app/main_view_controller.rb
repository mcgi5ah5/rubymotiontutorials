class MainViewController < UIViewController
  attr_accessor :task

  def init
    super

    self.task = Task.new

    self
  end

  def loadView
    self.title = "Tasks"
    self.view = TasksView.new  
  end

  def viewDidLoad
    view.button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewWillAppear(animated)
    view.label.text = task.title
  end

  def add_task
    UIAlertView.alloc.initWithTitle(
      "Hello world",
      message: "I hope you have a nice day",
      delegate: nil,
      cancelButtonTitle: "NO!" ,
      otherButtonTitles: "Thank you", nil
    ).show

    vc = AddTaskViewController.new
    vc.task = task
    navigationController.pushViewController(vc, animated: true)
  end
end