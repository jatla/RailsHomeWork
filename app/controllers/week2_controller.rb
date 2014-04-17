class Week2Controller < ApplicationController

  include Week2Helper
  before_action :set_homework

  def index
	send(params[:caction]) if nil != params[:caction]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework
      @homework = HomeWork.find_by(week: controller_name.capitalize)
    end
end
