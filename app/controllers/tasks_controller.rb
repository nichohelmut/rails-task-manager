class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    # @test = params[:check]
  end

  def update
    # if params[:completed]
    #   @task.completed = true
    # end
    @task.update(task_params)
    redirect_to tasks_path



  end

  def destroy
    @task.destroy
    redirect_to tasks_path

  end




  private

  def set_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end


