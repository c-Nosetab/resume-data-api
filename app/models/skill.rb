class Skill < ApplicationRecord

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
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @skill.update(
                  skill_name: params[:skill_name],
                  student_id: params[:student_id]
                  )
    render :show
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @skill.destroy

    render json: {message 'Skill Deleted', status: 200}
  end

end
