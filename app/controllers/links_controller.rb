class LinksController < ApplicationController
    def index
        @links = Link.all
        @link = Link.new
    end
    def create
        @link = Link.new(link_params)
        if @link.save
            redirect_to "/"
        else
            @links = Link.all
            index
        end
    end
end
