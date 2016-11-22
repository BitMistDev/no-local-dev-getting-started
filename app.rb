# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'
class CampainMember < ActiveRecord::Base
  self.table_name = 'salesforce.campainmember'
end

get "/campaignmember" do
  @campaignmember = CampainMember.all
  erb :index
end


get "/" do
  erb :home
end


class CampainMember < ActiveRecord::Base
  self.table_name = 'salesforce.campaignmember'
end

#get "/contacts" do
#  @contacts = Contact.all
#  erb :index
#end

get "/create" do
  dashboard_url = 'https://dashboard.heroku.com/'
  match = /(.*?)\.herokuapp\.com/.match(request.host)
  dashboard_url << "apps/#{match[1]}/resources" if match && match[1]
  redirect to(dashboard_url)
end
