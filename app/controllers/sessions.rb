get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  if @user
    login
    puts "user has logged in!"
    redirect "/users/#{@user.id}"
  else
    @errors = ["This username and password entry did not match."]
    erb :'sessions/new'
  end

end

delete '/sessions' do
  logout
  redirect '/'
end