class TodoController < ApplicationController
  def index
    @todo = Todo.all
    respond_to do |format|
      format.html
      format.json {render json: @todo}
  end

  def update
  end

  def todo_params
    params.require(:todo).permit(:project_id, :title)
  end

  def create
    @project = Project.find(params[:todo][project_id])
    @todo = @project.todo.create(todo_params)
    redirect_to projects_path
  end
end
