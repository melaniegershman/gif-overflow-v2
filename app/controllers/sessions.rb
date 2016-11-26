get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_email(params[:email])

  if @user
    login
    puts "user has logged in!"
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'sessions/new'
  end

end

delete '/sessions' do
  logout
  redirect '/'
end