class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end
	
	def index
		@projects = Project.all
	end
	
	def create
		@project = Project.new(project_params)
		
		@project.save
		redirect_to @project
	end
	
	def show
		@project = Project.find(params[:id])
	end
	
	private
  	def project_params
   		params.require(:project).permit(:name, :description, :submitter, :length)
  	end
end
