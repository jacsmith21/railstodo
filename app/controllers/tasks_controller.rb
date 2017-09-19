class TasksController < ApplicationController
  def new
    @task = Task.new
    render :show_task_input
  end

  def create
    @task = Task.create(task_params)
    @task.user = current_user
    authorize! :create, @task
    save_task
  end

  def destroy
    @task = Task.find(params[:id])
    authorize! :destroy, @task
    @task.destroy
    @tasks = Task.accessible_by(current_ability)
  end

  def edit
    @task = Task.find(params[:id])
    authorize! :create, @task
    render :show_task_input
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)
    authorize! :update, @task
    save_task
  end

  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end

  def save_task
    if @task.save
      @tasks = Task.accessible_by(current_ability)
      render :hide_task_input
    else
      render :show_task_input
    end
  end
end
