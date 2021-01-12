class ProjectsController < ApplicationController
  def projects
  end

  def dashboard
    @projects = Project.all.order(created_at: :asc)
    if params[:estado].present?
      @projects = Project.where('estado = ?', params[:estado]) 
    #else
      #@projects = Project.find_valid 
    end
  end
  
  def create
    @project = Project.create(nombre: params[:nombre], descripcion: params[:descripcion], fecha_inicio: params[:fecha_inicio], fecha_termino: params[:fecha_termino], estado: params[:estado])
  end
end
