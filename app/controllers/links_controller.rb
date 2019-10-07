class LinksController < ApplicationController
	def index
		@link = Link.all
	end

	def new
		@link = Link.new
	end

    def create
	    Link.create(link_params)
	    redirect_to root_path
	end

	private

	def link_params
	    params.require(:link).permit(:name, :url)
	end
end
