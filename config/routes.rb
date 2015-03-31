Rails.application.routes.draw do

  root 'static_pages#home'

  resources :students

  get '/students/:id/schedule', to: 'students#schedule', as: 'student_schedule'

  get '/students/:id/schedule/edit', to: 'students#edit_schedule', as: 'edit_student_schedule'
  patch '/students/:id/schedule/edit', to: 'students#update_schedule', as: 'update_student_schedule'

  resources :courses
end
