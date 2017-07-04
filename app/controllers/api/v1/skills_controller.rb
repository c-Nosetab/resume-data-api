class Api::V1::SkillsController < ApplicationController

  def index
    @skills = Skill.where(student_id: params[:user_id])
  end

  def create
    @skill = Skill.create(
                          skill_name: params[:skill_name],
                          student_id: params[:student_id]
                          )
    render :show
  end

  def show
    @skill = Skill.find(params[:skill_id])
  end

  def edit
    @skill = Skill.find(params[:skill_id])

    unless params[:user_id] == @skill.student_id
      render :show
    end
  end

  def update
    @skill = Skill.find(params[:skill_id])

    if params[:user_id] == @still.student_id
      @skill.update(
                    skill_name: params[:skill_name],
                    student_id: params[:student_id]
                    )
      render :show
    else
      render :show
    end
  end

  def destroy
    @skill = Skill.find(params[:skill_id])

    if params[:user_id] == @still.student_id
      @skill.destroy
      render json: {message: 'Skill Deleted', status: 200}
    else
      render :show
    end
  end

end
