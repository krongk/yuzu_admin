class Admin::HomeController < Admin::ApplicationController
  
  def index
    
  end

  def ckeditor_pictures
    @images = Ckeditor::Picture.order("updated_at DESC").page(params[:page])
  end

  def help
  end
end
