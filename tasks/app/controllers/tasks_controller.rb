

class TasksController < ApplicationController
  
	def index
  end
#variables de instancia comienzan con @
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
  end

end
