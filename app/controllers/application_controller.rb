class ApplicationController < ActionController::Base
  protect_from_forgery

  def bodyid
    @bodyid = params[:controller].parameterize
  end

  def bodyclass
    @bodyclass = params[:action].parameterize

    if params[:controller] == 'home'
      @front = 'front'
    else
      @front = 'not-front'
    end

    if current_admin
      @logged = 'logged-in'
    else
      @logged = 'not-logged-in'
    end


    @bodyclass = @bodyclass + ' ' + @front + ' ' + @logged 
  end

  helper_method :bodyid
  helper_method :bodyclass
end
