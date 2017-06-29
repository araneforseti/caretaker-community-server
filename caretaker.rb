require 'sinatra'
require 'sinatra/namespace'
require 'json'

require './lib/users_repo.rb'

set :show_exceptions, :after_handler

namespace '/api/v1' do

  before do
    content_type 'application/json'
  end

  error JSON::ParserError do
    puts "ERROR ERRO ERREOAROEARAE"
    status 400
    "bad request"
  end

  get '/users' do
    users = UsersRepo.new
    users.get_all.to_json
  end
end
