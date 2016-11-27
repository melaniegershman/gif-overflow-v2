get '/questions/:question_id/answers/:id' do
  @answer = Answer.find_by_id(params[:id])

  erb :'answers/show'
end

get '/questions/:question_id/answers/:id/edit' do
  @answer = Answer.find_by_id(params[:id])

  if logged_in?
    erb :'answers/edit'
  else
    redirect "/questions/#{params[:question_id]}"
  end
end

post '/questions/:question_id/answers' do
  if logged_in?
    Answer.create(body: params[:body], question_id: params[:question_id], user: current_user)
  end

  redirect "/questions/#{params[:question_id]}"
end

put '/questions/:question_id/answers/:id' do
  @answer = Answer.find_by_id(params[:id])
  @answer.update(body: params[:body])

  redirect "/questions/#{params[:question_id]}"
end

delete '/questions/:question_id/answers/:id' do
  @answer = Answer.find_by_id(params[:id])
  @answer.destroy

  redirect "/questions/#{params[:question_id]}"
end
