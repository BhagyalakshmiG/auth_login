class ProfileController < ApplicationController
	def new
	end

	def create
	end

  def edit
  	@profile = Profile.find(params[:id])
  end
end
