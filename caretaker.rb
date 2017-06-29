require 'sinatra'
require 'sinatra/namespace'
require 'json'

require './lib/users_repo.rb'
require './lib/events_repo.rb'
require './lib/caretaker_roles_repo.rb'

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

  get '/events' do
    events = EventsRepo.new
    events.get_all.to_json
  end

  get '/caretaker_roles' do
    caretakerRoles = CaretakerRolesRepo.new
    caretakerRoles.get_all.to_json
  end
end
