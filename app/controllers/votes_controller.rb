class VotesController<ApplicationController
    def create
        @link = Link.find(params[:link_id])
        status_number = params[:vote][:vote_status]
        @vote = Vote.new({:vote_status => status_number})
        @link.votes << @vote

        redirect_to('/')
    end
end
