class TemplatesController < ApplicationController

  # respond_to :html

  def index
    respond_to do |format|
      format.html
      format.pdf do
        render :formats => [:html]
      end
    end
  end

  def template
    render :template => 'templates/' + params[:path], :layout => nil
  end
  
end
