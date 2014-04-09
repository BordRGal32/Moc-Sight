require 'pry'
class Link < ActiveRecord::Base
    has_many :votes
    has_many :comments, :as => :commentable
    validates :url, :presence => true

    def self.cal_vote_order
        Link.all.each do |link|
        vote_count = 0
        link.update(:order => 0)
            if link.votes.length != 0
                link.votes.each { |vote| vote_count += vote.vote_status }
                link.update(:order => vote_count)
            end
        end
    end
    def self.cal_date_order
     date = Date.today
        Link.all.each do |link|
            year = (date.year - link.created_at.year)*(12)
            month = (date.month - link.created_at.month)
            total_penalty = year + month
            new_order = link.order - total_penalty
            link.update(:order => new_order)
        end
    end
end
