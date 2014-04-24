class Week3Controller < ApplicationController
  before_action :set_homework
  before_action :pop_message, only: :fallBackToDefaultApplicationLayout

  def index
    render layout: "week3layout"
  end

  def useDifferentLayoutThanWeek3Layout
  	render layout: "yetanotherweek3layout"
  end

  def fallBackToDefaultApplicationLayout
  	
  end

private 
  def pop_message
    flash[:notice] = "You are going back to default application layout"
  end

  def set_homework
    @homework = HomeWork.find_by(week: controller_name.capitalize)
  end
end
