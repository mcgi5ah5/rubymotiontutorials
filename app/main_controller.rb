 class MainViewController < UIViewController

  def loadView
    self.view = UIView.new #ask levi why self, is it basically attaching it to the loadView
    view.backgroundColor = UIColor.grayColor #why do we use view now,rather than self, is this because we have now set it?
    
    label = UILabel.new
    label.text = "Hello world"
    label.frame = [[20,100],[280,30]]
    view.addSubview(label)

    red_square = UIView.new
    red_square.frame = [[135, 150], [50,50]]
    red_square.backgroundColor = UIColor.redColor
    view.addSubview(red_square)

    @button = UIButton.new
    @button.setTitle("Add task", forState: UIControlStateNormal)
    @button.addTarget(self, action: :task_added, forControlEvents: UIControlEventTouchUpInside) #why self here
    @button.frame = [[235,250],[125,125]] #forgot this
    view.addSubview(@button)
  end

  def task_added
    @button.setTitle("ggjg", forState: UIControlStateNormal) #self hacked , think about the intracacies, not assumptions, write rest up
  end

  def preferredStatusBarStyle
      UIStatusBarStyleLightContent
  end

end