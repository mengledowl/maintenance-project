Rails.application.routes.draw do

  root 'static_pages#home'

  resources :students

  get '/students/:id/schedule', to: 'students#schedule', as: 'student_schedule'

  get '/students/:id/schedule/edit', to: 'students#edit_schedule', as: 'edit_student_schedule'
  patch '/students/:id/schedule/edit', to: 'students#update_schedule', as: 'update_student_schedule'

  resources :courses

  resources :committees

  resources :advising_appointments

  get '/students/:id/appointments/edit', to: 'students#edit_appointments', as: 'edit_student_appointments'
  patch 'students/:id/appointments/edit', to: 'students#update_appointments'

  # Recruitment

  get 'recruitment/', to: 'static_pages#recruitment', as: 'recruitment'

  get 'students/:id/profile/edit', to: 'students#edit_profile', as: 'edit_student_profile'
  patch 'students/:id/profile/edit', to: 'students#update_profile'

  resources :job_postings

  get 'students/:id/jobs', to: 'students#view_eligible_jobs', as: 'view_eligible_jobs'
end
