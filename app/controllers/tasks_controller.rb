

class TasksController < ApplicationController

#variables de instancia comienzan con @  
	def index
		@tasks=Task.all
  end

  def create
		@task=Task.new(params[:task])
		if @task.save
			redirect_to @task # nos reedirije a la lista de modelos. /task/1
		end
  end

  def new
		@task=Task.new
  end

  def update
  end

  def edit
  end

  def show
		@task=Task.find(params[:id]) #find busca el params
  end

  def destroy
		Task.find(params[:id]).try(:delete)
		redirect_to tasks_path
  end

end
