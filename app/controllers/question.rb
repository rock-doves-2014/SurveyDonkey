get '/question' do
  # display a list of all questions
  # @questions = Question.all
  # erb :'questions/index'
end

get '/question/new' do
  # return an HTML form for creating a new question
  # erb :'questions/new'
end

post '/question' do
  # create a new question
  # @question = Question.create(params[:question])
  # redirect '/question'
end

get '/question/:id' do |id|
  # display a specific question
  # @question = Question.find id
  # erb :'questions/single'
end

get '/question/:id/edit' do |id|
  # return an HTML form for editing a question
  # @question = Question.find id
  # erb :'questions/edit'
end

put '/question/:id' do |id|
  # update a specific question
  # @question = Question.find id
  # @question.update(params[:question])
  redirect 'entry/#{@question.id}'
end

delete '/question/:id' do |id|
  # delete a specific question
  # @question = Question.find id
  # @question.destroy
  # redirect '/question'
end
