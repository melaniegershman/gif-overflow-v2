helpers do
  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def login
    session[:user_id] = @user.id
  end

  def logout
    session.clear
  end

# don't need the following until we have questions aded:
  # def authorized?(entry)
  #   redirect '/'unless logged_in? && owns_post?(entry)
  # end

  def owns_question?(question)
    current_user == question.user
  end
end
