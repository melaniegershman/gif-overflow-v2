get '/questions/:question_id/comments/new' do
   @question_id = params[:question_id]
  erb :'/comments/new'
end

post '/questions/:id/comments' do
   comment = Comment.new(user_id: current_user.id, commentable_id: params[:id], body: params[:body], commentable_type: "Question")
   comment.save
   redirect "/questions/#{params[:id]}"
end 

get '/answers/:answer_id/comments/new' do
   @answer_id = params[:answer_id]
  erb :'/comments/new'
end

post '/answers/:id/comments' do
   comment = Comment.new(user_id: current_user.id, commentable_id: params[:id], body: params[:body], commentable_type: "Answer")
   comment.save
   answer = Answer.find_by_id(params[:id])
   @question_id = answer.question_id
   redirect "/questions/#{@question_id}"
end 