get '/questions/:question_id/comments/new' do
   @commentable_type = "Question"
   @question_id = params[:question_id]

   erb :'/comments/new'
end

post '/questions/:id/comments' do
   comment = Comment.create(user_id: current_user.id, commentable_id: params[:id], body: params[:body], commentable_type: "Question")

   redirect "/questions/#{params[:id]}"
end

get '/answers/:answer_id/comments/new' do
   @commentable_type = "Answer"
   @answer_id = params[:answer_id]

   erb :'/comments/new'
end

post '/answers/:id/comments' do
   comment = Comment.create(user_id: current_user.id, commentable_id: params[:id], body: params[:body], commentable_type: "Answer")
   answer = Answer.find_by_id(params[:id])

   redirect "/questions/#{answer.question.id}"
end
