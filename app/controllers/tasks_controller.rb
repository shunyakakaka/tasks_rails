class TasksController < ApplicationController
  def index
    @tasks = Task.new
  end

  def new
  end 
end