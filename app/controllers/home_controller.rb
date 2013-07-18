class HomeController < ApplicationController
  def index
    redirect_to new_home_path
  end
  
  def new
    @home = ::Home.new
  end
  
  def create
    @home = ::Home.new(params[:home])
    if @home.save
      Notifier.contact_home(@home).deliver
      #redirect_to home_show_path(@home), :notice => "Mensagem de sucesso."
      
    else
      render :action => 'new'
    end
  end
  
  def show
    @contact = Home.find_by_id(params[:id])
  end
end
