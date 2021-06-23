#
# Axess
# An online paste service
# (C) Alessio Saltarin 2021
# MIT License
#
#
Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
end
