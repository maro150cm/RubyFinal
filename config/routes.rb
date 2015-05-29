Rails.application.routes.draw do
    resources :teachers
    resources :courses
    resources :partweeks
    resources :parttimes
    resources :works
    resources :groups
end
