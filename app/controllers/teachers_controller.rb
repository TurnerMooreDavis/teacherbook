class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update]

  def edit
    # @teacher = Teacher.find_by_id(session[:user_id])
  end

  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to parents_path, notice: 'Teacher was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def teacher_params
      params.require(:teacher).permit(:password, :email, :name)
    end

    def set_teacher
      @teacher = Teacher.find_by_id(session[:user_id])
    end

end
