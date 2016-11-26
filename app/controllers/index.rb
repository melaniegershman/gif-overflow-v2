get '/' do
  # Look in app/views/index.erb
  @questions = Question.all
  erb :'questions/index'
end
