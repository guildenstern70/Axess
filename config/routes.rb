#
# Axess
# An online pastes service
# (C) Alessio Saltarin 2021
# MIT License
#
#
Rails.application.routes.draw do

  resources :pastes

  get '/welcome', to: 'welcome#index'
  root 'pastes#new'

end
