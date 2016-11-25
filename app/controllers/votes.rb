get '/questions/:question_id/votes/new' do
  @voteable = Question.find_by_id(params[:question_id])

  erb :'votes/_vote_form'
end

post '/votes' do
  Vote.create(user: current_user, voteable_id: params[:voteable_id], voteable_type: convert_to_class_name(params[:voteable_type]))

end
