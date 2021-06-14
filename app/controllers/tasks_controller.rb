class TasksController < ApplicationController

  before_action :set_target_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.page(params[:page])
  end

  def new
    @task = Task.new
  end 

  def create
    task = Task.create(task_params)
    flash[:notice] = "「#{task.title}」の掲示板が作成されました"
    redirect_to task
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

    redirect_to tasks_path, flash: {notice: "「#{@task.title}」の掲示板が削除されました"}
  end

  private

  def task_params
    params.require(:task).permit(:name, :title, :body)
  end

  def set_target_task
    @task = Task.find(params[:id])
  end
end