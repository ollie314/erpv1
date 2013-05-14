class CorsController < ApplicationController
  def options_for_mopd
    render :nothing => true, :status => 200
  end
end
