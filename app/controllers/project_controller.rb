class ProjectController < ApplicationController
  def index
    @project = Project.all
    @todo = Todo.new
    respond_to do |format|
      format.html
      format.json {render json: @project}
  end

  def update
  end

  def create
    
  end

 
end
end
