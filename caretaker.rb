require 'sinatra'
require 'sinatra/namespace'
require 'json'

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
    response = {"Words": "Here"}
    response.to_json
  end
end
