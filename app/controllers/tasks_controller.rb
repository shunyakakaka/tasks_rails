class TasksController < ApplicationController

  before_action :set_target_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.page(params[:page])
  end

  def new
    @task = Task.new
  end 

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def show 
  end

  def edit
  end

  def update
    @task.update(task_params)

    redirect_to @task
  end

  def destroy
    @task.delete

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :title, :body)
  end

  def set_target_task
    @task = Task.find(params[:id])
  end
end