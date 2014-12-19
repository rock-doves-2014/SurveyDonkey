get '/login' do
  # return an HTML form for creating a new user
   erb :'user/login', layout: false
end

post '/login' do
  user = User.find(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

post '/singup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    # catch error and siplay to user
    redirect '/login'
  end
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
