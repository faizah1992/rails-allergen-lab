Rails.application.routes.draw do
  get('/recipes',to:'recipes#index')
  get('/recipes/new',to:'recipes#new')
  post('/recipes',to:'recipes#create')
  get('/users',to:'users#index')
  get('/users/:id',to:'users#show')
  delete('/users/:id',to:'users#destroy')
  get('/ingredients',to:'ingredients#index')
  get('/ingredients/:id',to:'ingredients#show')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
