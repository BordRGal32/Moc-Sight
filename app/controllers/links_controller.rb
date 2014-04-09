class LinksController < ApplicationController
    def index
       Link.cal_vote_order
       # Link.cal_date_order
       @links = Link.all

        # params crash

        @link = Link.new
    end
    def create
        @link = Link.new(link_params)
        @link.update(:order => 1)
        if @link.save
            redirect_to "/"
        else
            @links = Link.all
            index
        end
    end
    def show
        @link = Link.find(params[:id])
    end
    def update
        @link = Link.find(params[:id])

        if @link.update(link_params)
            redirect_to links_path
        else
            show
        end
    end
    def destroy
        @link = Link.find(params[:id])
        @link.destroy
        @links = Link.all
        redirect_to links_path
    end

    def link_params
        params.require(:link).permit(:name, :url)
    end
end
