
get '/survey/new' do
  erb :'survey/new'
end

post '/survey' do
  @survey = Survey.create(params[:survey])
  erb :'survey/new'
end

get '/survey/:id' do |id|
  @survey = Survey.find(id)
  erb :'survey/single'
end

# get '/survey/:id/edit' do |id|
#   # return an HTML form for editing a survey
#   # @survey = Survey.find id
#   # erb :'survey/edit'
# end

# put '/survey/:id' do |id|
#   # update a specific survey
#   # @survey = Survey.find id
#   # @survey.update(params[:survey])
#   redirect 'entry/#{@survey.id}'
# end

# delete '/survey/:id' do |id|
#   # delete a specific survey
#   # @survey = Survey.find id
#   # @survey.destroy
#   # redirect '/survey'
# end
