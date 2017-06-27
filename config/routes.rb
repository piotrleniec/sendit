Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root 'home_page#index'

end
