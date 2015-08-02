Rails.application.routes.draw do
  get("/", { :controller => "moviedb", :action => "movie_index" })

 # Routes to CREATE directors
  get("/directors/new",           { :controller => "moviedb", :action => "new_director_form" })
  get("/directors/create_director",       { :controller => "moviedb", :action => "create_director" })

  # Routes to READ directors
  get("/directors",           { :controller => "moviedb", :action => "director_index" })
  get("/directors/:id/show",       { :controller => "moviedb", :action => "show_director" })

   # Routes to UPDATE directors
  get("/directors/:id/edit",           { :controller => "moviedb", :action => "update_director_form" })
  get("/directors/:id/update_director",       { :controller => "moviedb", :action => "update_director" })

   # Routes to DELETE directors
  get("/directors/delete_director/:id",           { :controller => "moviedb", :action => "destroy_director" })


  ### ACTORS ###
  # Routes to CREATE actors
  get("/actors/new",           { :controller => "moviedb", :action => "new_actor_form" })
  get("/actors/create_actor",       { :controller => "moviedb", :action => "create_actor" })

  # Routes to READ actors
  get("/actors",           { :controller => "moviedb", :action => "actor_index" })
  get("/actors/:id/show",       { :controller => "moviedb", :action => "show_actor" })

   # Routes to UPDATE actors
  get("/actors/:id/edit",           { :controller => "moviedb", :action => "update_actor_form" })
  get("/actors/:id/update_actor",       { :controller => "moviedb", :action => "update_actor" })

   # Routes to DELETE actors
  get("/actors/delete_actor/:id",           { :controller => "moviedb", :action => "destroy_actor" })



  ### MOVIES ###
  # Routes to CREATE movies
  get("/movies/new",           { :controller => "moviedb", :action => "new_movie_form" })
  get("/movies/create_movie",       { :controller => "moviedb", :action => "create_movie" })

  # Routes to READ movies
  get("/movies",           { :controller => "moviedb", :action => "movie_index" })
  get("/movies/:id/show",       { :controller => "moviedb", :action => "show_movie" })

   # Routes to UPDATE movies
  get("/movies/:id/edit",           { :controller => "moviedb", :action => "update_movie_form" })
  get("/movies/:id/update_movie",       { :controller => "moviedb", :action => "update_movie" })

   # Routes to DELETE movies
  get("/movies/delete_movie/:id",           { :controller => "moviedb", :action => "destroy_movie" })



end
