#initialiser la variable qui va etre utilisée 
# et s’afficher dans articles/index.html.erb

class ArticlesController < ApplicationController
  def index
#affiche la page articles/index.html.erb et initialise la variable @livres

    @potins = Article.all

  end
end
