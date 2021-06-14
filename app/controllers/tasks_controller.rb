class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end 

  def create
    Task.create(task_params)
    
  end

  private

  def task_params
    params.require(:task).permit(:name, :title, :body)
  end
end