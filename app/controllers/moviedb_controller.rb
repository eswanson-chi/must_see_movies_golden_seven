class MoviedbController < ApplicationController

  def director_index
    @list_of_directors = Director.all

    render("directors/index.html.erb")
  end

  def show_director
    @director = Director.find(params["id"])

    render("directors/show.html.erb")
  end

  def new_director_form
    render("directors/new_director.html.erb")
  end

  def create_director
    d = Director.new
    d.name = params["director_name"]
    d.dob = params["director_dob"]
    d.bio = params["director_bio"]
    d.image_url = params["director_img"]
    d.save

    redirect_to("http://localhost:3000/directors")
  end

  def update_director_form
    @director = Director.find(params["id"])
    render("directors/update_director.html.erb")
  end

  def update_director
    d = Director.find(params["id"])
    d.name = params["update_director_name"]
    d.dob = params["update_director_dob"]
    d.bio = params["update_director_bio"]
    d.image_url = params["update_director_img"]
    d.save

    redirect_to("http://localhost:3000/directors/#{d.id}/show")
  end

  def destroy_director
    d = Director.find(params["id"])
    d.destroy

    redirect_to("http://localhost:3000/directors/")
  end



  def actor_index
    @list_of_actors = Actor.all

    render("actors/index.html.erb")
  end

  def show_actor
    @actor = Actor.find(params["id"])

    render("actors/show.html.erb")
  end

  def new_actor_form
    render("actors/new_actor.html.erb")
  end

  def create_actor
    a = Actor.new
    a.name = params["actor_name"]
    a.dob = params["actor_dob"]
    a.bio = params["actor_bio"]
    a.image_url = params["actor_img"]
    a.save

    redirect_to("http://localhost:3000/actors")
  end

  def update_actor_form
    @actor = Actor.find(params["id"])
    render("actors/update_actor.html.erb")
  end

  def update_actor
    a = Actor.find(params["id"])
    a.name = params["update_actor_name"]
    a.dob = params["update_actor_dob"]
    a.bio = params["update_actor_bio"]
    a.image_url = params["update_actor_img"]
    a.save

    redirect_to("http://localhost:3000/actors/#{a.id}/show")
  end

  def destroy_actor
    a = Actor.find(params["id"])
    a.destroy

    redirect_to("http://localhost:3000/actors/")
  end



  def movie_index
    @list_of_movies = Movie.all

    render("movies/index.html.erb")
  end

  def show_movie
    @movie = Movie.find(params["id"])

    render("movies/show.html.erb")
  end

  def new_movie_form
    render("movies/new_movie.html.erb")
  end

  def create_movie
    m = Movie.new
    m.title = params["movie_title"]
    m.image_url = params["movie_img"]
    m.description = params["movie_desc"]
    m.year = params["movie_year"]
    m.duration = params["movie_dur"]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

  def update_movie_form
    @movie = Movie.find(params["id"])
    render("update_movie.html.erb")
  end

  def update_movie
    m = Movie.find(params["id"])
    m.title = params["update_movie_title"]
    m.image_url = params["update_movie_img"]
    m.description = params["update_movie_desc"]
    m.year = params["update_movie_year"]
    m.duration = params["update_movie_dur"]
    m.save

    redirect_to("http://localhost:3000/movies/#{m.id}/show")
  end

  def destroy_movie
    m = Movie.find(params["id"])
    m.destroy

    redirect_to("http://localhost:3000/movies/")
  end
end
