class AddTaskViewController <UIViewController
  
  def loadView
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.new
    @text_field.frame = [[20,100],[280,50]]
    @text_field.backgroundColor = UIColor.lightGrayColor
    @text_field.placeholder = 'Enter your task'
    view.addSubview(@text_field)


  end

  def viewDidLoad
    self.title = 'Add task'
  end
end