class Api::V1::ExperiencesController < ApplicationController

  def index
    @experiences = Experience.where(student_id: params[:user_id].to_i)
  end

  def create
    @experience = Experience.create(
                                     start_date: Time.utc(params[:start_year], params[:start_month], params[:start_day]),
                                     end_date: Time.utc(params[:end_year], params[:end_month], params[:end_day]),
                                     job_title: params[:job_title],
                                     company_name: params[:company_name],
                                     details: params[:details],
                                     student_id: params[:user_id]
                                    )
    render :show
  end

  def show
    @experience = Experience.find(params[:exp_id])
  end

  def edit
    if params[:user_id].to_i == Experience.find(params[:exp_id]).student_id
      @experience = Experience.find(params[:exp_id])
      render :show
    end

  end

  def update

    if params[:user_id].to_i == Experience.find(params[:exp_id]).student_id
      @experience = Experience.find(params[:exp_id])
      @experience.update(
                         start_date: Time.utc(params[:start_year], params[:start_month], params[:start_day]),
                         end_date: Time.utc(params[:end_year], params[:end_month], params[:end_day]),
                         job_title: params[:job_title],
                         company_name: params[:company_name],
                         details: params[:details]
                        )

      render :show
    else
      render :show
    end
  end

  def destroy

    if params[:user_id].to_i == Experience.find(params[:exp_id]).student_id
      @experience = Experience.find(params[:exp_id])
      @experience.delete
      render json: {message: 'Experience Deleted', status: 200}
    else
      render :show
    end
  end

end

