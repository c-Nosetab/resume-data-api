class Api::V1::EducationsController < ApplicationController

  def index
    @educations = Education.where(student_id: params[:user_id])
  end

  def create
    @education = Education.create(
                                start_date: params[:start_date],
                                end_date: params[:end_date],
                                degree: params[:degree],
                                university_name: params[:university_name],
                                details: params[:details],
                                student_id: params[:user_id]
                                )
    render :show
  end

  def show
    @education = Education.find(params[:edu_id])
  end

  def edit
    @education = Education.find(params[:edu_id])

    unless params[:user_id] == @education.student_id
      render :show
    end
  end

  def update
    @education = Education.find(params[:edu_id])

    if params[:user_id] == @education.student_id
      @education.update(
                       start_date: params[:start_date],
                       end_date: params[:end_date],
                       degree: params[:degree],
                       university_name: params[:university_name],
                       details: params[:details],
                       student_id: params[:student_id]
                      )
      render :show
    else
      render :show
    end
  end

  def destroy
    @education = Education.find(params[:edu_id])

    if params[:user_id] == @education.student_id
      @education.destroy
      render json: {message: 'Education Deleted', status: 200}
    else
      render :show
    end
  end
end
