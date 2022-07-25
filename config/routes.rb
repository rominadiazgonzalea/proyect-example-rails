Rails.application.routes.draw do
  get 'contact/index'
  get 'contact/show'
  get 'pagina/index'
  get 'pagina/adit'
  get 'pagina/show'
  get 'subject/index'
  get 'subject/adit'
  get 'student/index'
  get 'student/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
