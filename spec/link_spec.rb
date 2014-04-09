require 'spec_helper'
require 'pry'

describe Link do
    it { should have_many :votes }
    it { should validate_presence_of :url}
    it { should have_many :comments }

describe '.cal_vote_order' do
    it 'calculats the order attribute of every instance of Link' do
        l1 = Link.create({:name => '1', :url => 'this'})

        l2 = Link.create({:name => '2', :url => 'that '})
        v1 = Vote.create({:vote_status => 1})
        v2 = Vote.create({:vote_status => 1})
        v3 = Vote.create({:vote_status => 1 })
        l1.votes << v1
        l1.votes << v2
        l1.votes << v3
        Link.cal_vote_order
        l1.reload
        l1.order.should eq 3
     end
  end
end
