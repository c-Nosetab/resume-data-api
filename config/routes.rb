Rails.application.routes.draw do


  namespace :api do
      namespace :v1 do
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


      end
    end


end
