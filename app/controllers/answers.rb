get '/questions/:question_id/answers/new' do
  erb :'answers/_form'
end

post '/questions/:question_id/answers' do
  Answer.create(body: params[:body], user: current_user, question_id: params[:question_id])

  redirect "/questions/#{params[:question_id]}"
end
