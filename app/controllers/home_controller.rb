class HomeController < ApplicationController

  def index
    @bios = Bio.all()
    @bio = @bios.sample
  end

end
