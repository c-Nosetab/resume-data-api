class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    student = Student.create(
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          email: params[:email],
                          phone: params[:phone],
                          shoft_bio: params[:short_bio],
                          linkedin_url: params[:linkedin_url],
                          twitter_handle: params[:twitter_handle],
                          personal_website_url: params[:personal_website_url],
                          online_resume_url: params[:online_resume_url],
                          github_url: params[:github_url],
                          photo: params[:photo]
                          )

    render :show
  end

  def show
    @student = Student.find(params[:user_id])
  end

  def edit
    if params[:user_id].to_i == Student.find(params[:user_id]).id
      @student = Student.find(params[:user_id])
      render :show
    end
  end

  def update
    @student = Student.find(params[:user_id])

    if params[:user_id].to_i == Student.find(params[:user_id]).id
      @student.update(
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      emaill: params[:email],
                      phone: params[:phone],
                      shoft_bio: params[:short_bio],
                      linkedin_url: params[:linkedin_url],
                      twitter_handle: params[:twitter_handle],
                      personal_website_url: params[:personal_website_url],
                      online_resume_url: params[:online_resume_url],
                      github_url: params[:github_url],
                      photo: params[:photo]
                     )

      render :show
    else
      render :show
    end
  end

  def destroy
    if Student.find(params[:user_id]).id == params[:user_id].to_i
      @student = Student.find(params[:user_id])

      @student.delete
      render json: {message: 'Student Deleted.', status: 200}
    else
      render :show
    end
  end

end
