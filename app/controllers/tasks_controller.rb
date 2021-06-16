class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end 

  def create
    @task = Task.create
    binding.pry
  end
end