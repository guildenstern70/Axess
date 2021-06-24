#
# Axess
# An online pastes service
# (C) Alessio Saltarin 2021
# MIT License
#
#
Rails.application.routes.draw do

  get '/pastes', to: 'pastes#index'
  get '/pastes/:id', to: 'pastes#show'
  
  get '/welcome', to: 'welcome#index'
  root 'welcome#index'

end
