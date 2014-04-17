class Week1Controller < ApplicationController
  def index 
  	@homework = HomeWork.find_by(week: controller_name.capitalize)
  end
end
