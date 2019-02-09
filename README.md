
le résultat est visible sur

https://pure-harbor-97494.herokuapp.com/
----------------------------------------------

#Votre mission sera de réaliser une nouvelle application Rails, qui devra comporter les éléments suivants.
#    1. Ce sera un blog qui aura des articles. 
#    2. Chaque article a un titre et un contenu. 
----------------------------------------------------------------------
Rails new article -d postgresql
cd article
rails db:create
rails bundle install
------------------------------------------------------------------------
rails generate migration article
------------------------------------------------------------------------
#dans la migration rajouter
----------------------------------------
    create_table :articles
    add_column :articles, :titre, :string
    add_column :articles, :contenu, :text

#ou
    create_table :articles do |t|
      t.string  :titre
      t.text    :description
      t.timestamps
 end
----------------------------
#on aurait pu passer par rails generate model article titre:string  contenu:text (Cree migration+
#Update create table + cree model)
----------------------------
rails generate controller articles index
#                         (create  app/controllers/articles_controller.rb)
#                         (update route  get 'articles/index')
#                         (create    app/views/articles/index.html.erb)
----------------------------
rails db:migrate
----------------------------
#on insere des enregistrements à la console
rails c
 Article.create(titre:"mon voyage", contenu:"le recit détaille du dernier voyage au laos")
 Article.create(titre:"mes copains", contenu:"Alain, Renee, Redolphe")
 Article.create(titre:"mes galeres", contenu:"mon sejour au poste de police")
Article.all
exit 
----------------------------
#initialiser la variable qui va etre utilisée et s’afficher dans articles/index.html.erb
#dans ArticlesController.rb
----------------------------

  def index
    @potins = Article.all
end

#afficher le resultat dans articles/index.html.erb
<h1>Articles#index</h1>

<% @potins.each do |un_article| %>

  <p><%= un_article.titre %></p>
  <p><%= un_article.contenu %></p>
  <p> ------------------------------------</p>

<% end %>

#affichage dans http://localhost:3000/articles/index

#dans routes.rb
get 'articles' => 'articles#index'
#permet l’affichage dans http://localhost:3000/articles
 root to: 'articles#index'
#permet l’affichage dans http://localhost:3000/

#REMARQUE : 
rails generate scaffold article titre:string  contenu:text 
#permet de generer un squelette du blog avec les formulaires prêt à être modifié pour obtenir rapidement un resultat




# blog-openclassroom
# blog-openclassroom
