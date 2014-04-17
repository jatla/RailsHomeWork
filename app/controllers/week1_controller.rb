class Week1Controller < ApplicationController

  def index
  	@homework = Homework.find_by(week: controller_name.capitalize)
  end

end
