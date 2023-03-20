require_relative 'boot'

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PATSApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # CORS code
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        
        origins '*'
        
        # Notice the code :methods => [:get, :post, :put], this is how rack-cors will be able to whitelist certain types of request. 
        # For example, if you don't want anyone from another domain to make post requests (or create new things) to your API, then remove that. 
        # If you want to allow them to make delete requests, then add it in like this: :methods => [:get, :post, :put, :delete].
        resource '*', :headers => :any, :methods => [:get, :post, :put]
      end
    end


  end
end
