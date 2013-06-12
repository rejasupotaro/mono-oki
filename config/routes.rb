MonoOki::Application.routes.draw do
  root :to => 'apks#index'
  resources :apks
end
