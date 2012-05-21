

class TasksController < ApplicationController

#variables de instancia comienzan con @  
	def index
		@tasks=Task.all
  end

  def create
		@task=Task.new(params[:task])
		if @task.save
			redirect_to @task # nos reedirije a la lista de modelos. /task/1
		else
			render :new		
		end
  end

  def new
		@task=Task.new
  end

  def update
  	@task=Task.new(params[:id])		
		if @task.update_attributes(params(:task))
			redirect_to @task
		else
			render :edit
		end
  end

  def edit
  	@task=Task.find(params[:id])
  end

  def show
		@task=Task.find(params[:id]) #find busca el params
  end

  def destroy
		Task.find(params[:id]).try(:delete)
		redirect_to tasks_path
  end

end
