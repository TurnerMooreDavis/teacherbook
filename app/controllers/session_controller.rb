class SessionController < ApplicationController

  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:user_id] = teacher.id
        redirect_to parents_path, notice: "Successfully logged in."
      else
        redirect_to root_path, notice: "Please Try Again"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to session_login_path, notice: "Successfully logged out."
  end

end
