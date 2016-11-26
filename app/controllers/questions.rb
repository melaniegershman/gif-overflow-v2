# show all questions
get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

# go to form to post new question
get '/questions/new' do
  erb :'questions/new'
end

# show specific question
get '/questions/:id' do
  @question = Question.find_by_id(params[:id])
  @answers = Answer.where(question_id: params[:id])
  erb :'questions/show'
end

# create a new question
post '/questions' do
  # binding.pry
  @question = Question.new(title: params[:question], body: params[:body], user_id: current_user[:id])
  @question.user = current_user
  if @question.save
    puts "question saved!"
    redirect "/questions/#{@question.id}"
  else
    @errors = @user.errors.full_messages
    erb :'questions/new'
  end
end

# form to get to edit a question
get '/questions/:id/edit' do
  @question = Question.find_by_id(params[:id])
  erb :'questions/edit'
end

put '/questions/:id' do
  @question = Question.find_by_id(params[:id])

  @question.update_attributes(params[:question])

  if @question.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @user.errors.full_messages
    erb :'questions/edit'
  end
end

delete '/question/:id' do
  @question = Question.find_by_id(params[:id])
  @question.destroy
  redirect '/questions/index'
end