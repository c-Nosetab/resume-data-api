class Api::V1::CapstonesController < ApplicationController

  def index
    @capstones = Capstone.where(student_id: params[:user_id])
  end

  def create
    @capstone = Capstone.create(
                                name: params[:name],
                                description: params[:description],
                                url: params[:url],
                                screenshot: params[:screenshot],
                                student_id: params[:student_id]
                                )
    render :show
  end

  def show
    @capstone = Capstone.find(params[:cap_id])
  end

  def edit
    @capstone = Capstone.find(params[:cap_id])
  end

  def update
    @capstone = Capstone.find(params[:cap_id])
    @capstone.update(
                    name: params[:name],
                    description: params[:description],
                    url: params[:url],
                    screenshot: params[:screenshot],
                    student_id: params[:student_id]
                    )
    render :show
  end

  def destroy
    @capstone = Capstone.find(params[:cap_id])
    @capstone.destroy

    render json: {message: 'Capstone Deleted', status: 200}
  end

end
