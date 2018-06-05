class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy, :edit]
  def index
    @tasks = Task.all
  end

  def show

  end

  def edit
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "Your task successfully created"
    else
      render :new, alert: "Your task could not be created"
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
