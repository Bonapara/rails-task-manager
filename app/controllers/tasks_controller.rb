class TasksController < ApplicationController

  def index
    @tasks =Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @title = params[:task][:title]
    @details = params[:task][:details]
    @task = Task.new(title:@title, details:@details)
    @task.save
    redirect_to '/tasks'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end

def tasks_params
  params.require(:task).permit(:title, :details)
end
