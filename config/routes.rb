Laposta::Application.routes.draw do
  devise_for :admins, :path => "admins", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :slides

  get "home/index"

  root :to => "home#index"

 end
