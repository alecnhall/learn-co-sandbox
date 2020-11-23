# ActiveRecord In Sinatra 

# CRUD 

# Create: Model.create 

# Read: Model.all/Model.find(id_number)

# Update: Model.update 

# Delete: Model.destroy 

# Connecting Controller Action to Views for Implementing CRUD

# create

# The "create" part of CRUD is implemented in Sinatra by building a route, or controller action, to render a form creating a new instance of your model.

# - The get "/models/new" route is created as a block in your controller. In this block, we can render an erb file that contains our foprm. In this case, we'll call it new.erb.

# - The form sends a post request to another controller action, post '/models'. It is here that you place code that extracts the form data from the params and uses it to create a new instance of your model class, something along the lines of Model.create(some_attribute: params[:some_attribute]).

# read 

# There are two ways in which we can read data. We may want to "read" or deliver to our user, all of the instances of a closs, or a specific instance of a class.

# - The get '/models' controller action handles requests for all instances of a class. It should load up all of those instances and set them equal to an instance variable @models = Model.all. Then it renders the index.erb view page.

# - The index.erb view page will use erb to render all of the instances stored in the @models instance variable.

# - The get 'models/:id' controller action handles request for a given instnce of your model. For example if a user types in www.yourwebsite.com/models/2, this route will catch that request and get the id number, in this case 2, from the params. It will then find the instance of the model with tha id number and set it equal to an instance variable: @model = Model.find(params[:id]). Finally it will, render the show.erb view page.

# - The show.erb view page will use erb to render that @ model object

# update 

# To implement the updte action, we need a controller action that render and update form, and we need a controller action to catch the post request sent by that form.

# - The get '/models/:id/edit' controller action will render the edit.erb view page.

# - the edit.erb view page will contain the form for editing a given instance of a model. This form will send a patch request to patch '/models/:id'

# the patch '/models/:id' controller action will find the instance of the model to update, using the id from params, update and save that instance 

# We'll need to update the config.ru to use the Sinatra Middleware that lets our app send patch requests.

# config.ru:

use Rack::MethodOverride
run ApplicationController

# From there, you'll need to add a line to your form

# edit.erb

<form action="/models/<%= @model.id %>" method="post">
    <input id="hidden" type="hidden" name="_method" value="patch">
    <input type="text" ...>
</form>

# The MethodOverride middleware willintercept every request sent and received by our application. If it find a request with nam="_method", it will set the request type base on what is set in the value attribute, which in this case is patch.

# delete 

# The delete part of CRUD is a little trick. It doesn't get its own view page but instead is implmeneted via a "delete button", on the show page of a given instance. This "delete button", however, isn't really a button; it's a form! The form should send DELETE request to delete '/models/:id' and should only contain a submit button with a value of delete. That wat, it will appear as only a button to the user.

<form method="post" action="/models/<%= @model.id %>">
  <input id="hidden" type="hidden" name="_method" value="DELETE">
  <input type="submit" value="delete">
</form>

