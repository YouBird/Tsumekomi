Rails.application.routes.draw do
  root  'users#index'  #この1行を追加
#  get 'boards' => 'boards#index'
#  get 'boards/new' => 'boards#new'
#  post 'boards' => 'boards#create'
#  get 'boards/:id' => 'boards#show'
#  get 'boards/:id/edit' => 'boards#edit'
#  put 'boards/:id' => 'boards#update'
#  delete 'boards/:id' => 'boards#destroy'

resources :boards do
  resources :comments, only: [:create, :destroy]
end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
end
