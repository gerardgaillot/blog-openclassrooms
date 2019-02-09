Rails.application.routes.draw do
 # pointer sur le controller articles et def index et affiche la page articles/index.html.erb
  get 'articles/index'
  get 'articles' => 'articles#index' #permet l’affichage dans http://localhost:3000/articles
  root to: 'articles#index'#permet l’affichage dans http://localhost:3000/
end
