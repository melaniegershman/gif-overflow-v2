get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    login
    redirect "/users/#{@user.id}"
  else

    @errors =  @user.errors.full_messages
    # binding.pry
    erb :'_errors'
  end
 end

get '/users/:id' do
  @user = User.find_by_id(params[:id])
  erb :'/users/show'
end