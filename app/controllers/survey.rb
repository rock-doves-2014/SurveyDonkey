get '/survey' do
  # display a list of all surveys
  # @surveys = Survey.all
  # erb :'surveys/index'
end

get '/survey/new' do
  # return an HTML form for creating a new survey
  # erb :'surveys/new'
end

post '/survey' do
  # create a new survey
  # @survey = Survey.create(params[:survey])
  # redirect '/survey'
end

get '/survey/:id' do |id|
  # display a specific survey
  # @survey = Survey.find id
  # erb :'surveys/single'
end

get '/survey/:id/edit' do |id|
  # return an HTML form for editing a survey
  # @survey = Survey.find id
  # erb :'surveys/edit'
end

put '/survey/:id' do |id|
  # update a specific survey
  # @survey = Survey.find id
  # @survey.update(params[:survey])
  redirect 'entry/#{@survey.id}'
end

delete '/survey/:id' do |id|
  # delete a specific survey
  # @survey = Survey.find id
  # @survey.destroy
  # redirect '/survey'
end
