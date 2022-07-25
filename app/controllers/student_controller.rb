class StudentController < ApplicationController
  def index
    
  end

  def edit
    @id = params[:id]
    @curso = params[:curso]
  end


end
