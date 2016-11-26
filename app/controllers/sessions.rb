get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_username(params[:username])

  if @user
    login
    # reinstate the below redirect once we have user pages:
    # redirect "/users/#{@user.id}"
    puts "user has logged in!"
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    
    erb :"_errors", layout: false, locals: {question: @question}
  end

end

delete '/sessions' do
  logout
  redirect '/'
end