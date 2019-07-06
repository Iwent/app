class TodosController < ApplicationController
  def index
    @todo = Todo.all
    respond_to do |format|
      format.html
      format.json {render json: @todo}
  
    end
  end

  def update
  end

  def todo_params
    params.require(:todo).permit(:project_id, :text)
  end

  def create
    
    @todo = Todo.create(todo_params)
    redirect_to projects_path
  end
end
