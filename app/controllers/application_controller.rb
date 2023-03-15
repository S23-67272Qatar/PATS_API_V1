# The ApplicationController in an API inherits from ActionController::API. 
# Instead of ActionController
# This means that we are getting a reduced set of The ActionController. 
# There is no views (No user interfaces, Web pages), hence all the template and layout business
# is not considered here.
# But the controllers do not have to do all this anymore, because all they have to do is passing json through this process. 
# And there are no views anymore.
#  So you see, that none of the controllers will have views to speak to. 

class ApplicationController < ActionController::API
 
end
