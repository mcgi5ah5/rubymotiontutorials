 class MainViewController < UIViewController
  def loadView
    self.view = UIView.new 
    view.backgroundColor = UIColor.whiteColor

    @button = UIButton.new
    @button.setTitle("Add task", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState:UIControlStateNormal)
    @button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
    @button.frame = [[20,250],[280,30]] 
    view.addSubview(@button)

    @label = UILabel.new
    @label.frame = [[20,150],[280,30]]
    view.addSubview(@label)
  end

  def viewDidLoad
    self.title = 'Tasks'
    @task = Task.new #add this here, as only want this to happen once otherwise it'll be replaced
  end

  def viewWillAppear(animated)
    @label.text = @task.title
  end

  def add_task
    vc = AddTaskViewController.new
    vc.task = @task
    navigationController.pushViewController(vc, animated:true) 
  end
end