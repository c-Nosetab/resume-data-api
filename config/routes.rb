Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      post '/students' => 'studentsr#post'
      get '/students/:id' => 'students#show'
      get '/students/:id/edit' => 'students#edit'
      patch '/students/:id' => 'students#update'
      delete '/students/:id' => 'students#destroy'

      get '/students/:user_id/experiences' => 'experiences#index'
      post '/students/:user_id/experiences' => 'experiences#post'
      get '/students/:user_id/experiences/:exp_id' => 'experiences#show'
      get '/students/:user_id/experiences/:exp_id/edit' => 'experiences#edit'
      patch '/students/:user_id/experiences/:exp_id' => 'experiences#update'
      delete '/students/:user_id/experiences/:exp_id' => 'experiences#destroy'

      get '/students/:user_id/educations' => 'educations#index'
      post '/students/:user_id/educations' => 'educations#post'
      get '/students/:user_id/educations/:edu_id' => 'educations#show'
      get '/students/:user_id/educations/:edu_id/edit' => 'educations#edit'
      patch '/students/:user_id/educations/:edu_id' => 'educations#update'
      delete '/students/:user_id/educations/:edu_id' => 'educations#destroy'

      get '/students/:user_id/skills' => 'skills#index'
      post '/students/:user_id/skills' => 'skills#post'
      get '/students/:user_id/skills/:skill_id' => 'skills#show'
      get '/students/:user_id/skills/:skill_id/edit' => 'skills#edit'
      patch '/students/:user_id/skills/:skill_id' => 'skills#update'
      delete '/students/:user_id/skills/:skill_id' => 'skills#destroy'

      get '/students/:user_id/capstones' => 'capstones#index'
      post '/students/:user_id/capstones' => 'capstones#post'
      get '/students/:user_id/capstones/:cap_id' => 'capstones#show'
      get '/students/:user_id/capstones/:cap_id/edit' => 'capstones#edit'
      patch '/students/:user_id/capstones/:cap_id' => 'capstones#update'
      delete '/students/:user_id/capstones/:cap_id' => 'capstones#destroy'
    end
  end


end
