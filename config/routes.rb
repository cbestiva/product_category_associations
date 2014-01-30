ProductsCategoriesApp::Application.routes.draw do
 
  resources :sites, :products, :categories

  root to: 'sites#index'

  # get '/go/all_products', to: 'products#display_products'


end
