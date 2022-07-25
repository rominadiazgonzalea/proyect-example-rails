class ContactController < ApplicationController
  def index
  end

  def show
    @codigo = params [:codigo]
    @telefono = params[:telefono]
  end
end
