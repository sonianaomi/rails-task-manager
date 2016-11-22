class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_param)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_param)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_param
    params.require(:task).permit(:description)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
