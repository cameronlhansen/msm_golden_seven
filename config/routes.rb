Rails.application.routes.draw do

##Movies

get('/', { :controller => 'movies', :action => 'index' })
get('/movies', { :controller => 'movies', :action => 'index' })
get('/movies/:id', { :controller => 'movies', :action => 'show' })
get('/delete_movie/:id', { :controller => 'movies', :action => 'delete' })
get('/new_movie', { :controller => 'movies', :action => 'new_form' })
get('/create_movie', { :controller => 'movies', :action => 'create_movie' })
get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
get('/edit_movie/:id', { :controller => 'movies', :action => 'edit_movie' })

##Directors


get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show' })
get('/delete_director/:id', { :controller => 'directors', :action => 'delete' })
get('/new_director', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'create_director' })
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/edit_director/:id', { :controller => 'directors', :action => 'edit_director' })

##Actors

get('/actors', { :controller => 'actors', :action => 'index' })
get('/actors/:id', { :controller => 'actors', :action => 'show' })
get('/delete_actor/:id', { :controller => 'actors', :action => 'delete' })
get('/new_actor', { :controller => 'actors', :action => 'new_form' })
get('/create_actor', { :controller => 'actors', :action => 'create_actor' })
get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
get('/edit_actor/:id', { :controller => 'actors', :action => 'edit_actor' })




end
