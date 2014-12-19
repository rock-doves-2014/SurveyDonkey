get '/login' do
  # return an HTML form for creating a new user
  # erb :'users/new'
end

post '/user' do
  # create a new user
  # @user = User.create(params[:user])
  # redirect '/user'
end

get '/user/:id' do |id|
  # display a specific user
  # @user = User.find id
  # erb :'users/single'
end

get '/user/:id/edit' do |id|
  # return an HTML form for editing a user
  # @user = User.find id
  # erb :'users/edit'
end

put '/user/:id' do |id|
  # update a specific user
  # @user = User.find id
  # @user.update(params[:user])
  redirect 'entry/#{@user.id}'
end

delete '/user/:id' do |id|
  # delete a specific user
  # @user = User.find id
  # @user.destroy
  # redirect '/user'
end
