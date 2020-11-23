# A session is a hash that stores data and passes that information on as a cookie to the client.

# Sessions are enbaled in the controller. These lines of code inside the configure block will enable the session 

configure do 
  enable :sessions # turns sessions on
  set :session_secret, "secret" # this is an encryption key
end

# The configure block is a part of built-in settings that control whether the features are enabled or not. In this case, we're enabling the sessions feature.

# In order to keep track of a current user throughout a session, we need to set up the session hash to store th user_id in the hash during a controller action.

get '/hey' do 
  @session = session
end

# Because we enabled sessions, every controller action has acces to the session hash.

# We stored the session hash in the instance variable @session so that our views will have access to the session data. In this case, @session now looks like this:

@session = {
  "session_id"=>  
    "dd32f512ee239ad74aa6f10c8cad37ce28d6c6922eff252ed641b1017130fe22", 
  "csrf"=> "040e9777d4dfae03bb1e6498f2a75482", 
  "tracking"=>{ 
    "HTTP_USER_AGENT"=> "e193e9e937caa9a19ca483f046281aae77d2216b", 
    "HTTP_ACCEPT_LANGUAGE"=> "66eae971492938c2dcc2fb1ddc8d7ec3196037da"
  }
}

# You can access information from the hash just like you would any hash.

@session["session_id"] #=> "dd32f512ee239ad74aa6f10c8cad37ce28d6c6922eff252ed641b1017130fe22"

# You can also modify and add data to the session hash by adding a key-value pair.

get '/hey' do 
  session["name"] = Victoria
  @session = session
end

# Securing Your Session 

# As we mentioned at the beginning, you should not define you session_secret as we do in this lab. The most secure method is to use a secure number generator to generate a secret and to share that secret, via environment variables in the shell, to Sinatra. This is covered in [their documentation][secsin].

