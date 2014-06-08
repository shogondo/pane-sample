class TasksController < ApplicationController
  before_action :set_tasks
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    render action: :default
  end

  # GET /tasks/1
  def show
    render action: :default
  end

  # GET /tasks/new
  def new
    @task = Task.new
    if params[:date].present?
      @task.expiry_date = Date.parse(params[:date])
    end
    render action: :default
  end

  # GET /tasks/1/edit
  def edit
    render action: :default
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: "タスクを登録しました"
    else
      render action: :default
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "タスクを更新しました"
    else
      render action: :default
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: "タスクを削除しました"
  end

  private

  def set_tasks
    @tasks = Task.all
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :description, :expiry_date)
    end
end
