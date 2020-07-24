# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'thechanmoon.github.io', 'movie-pg.herokuapp.com','moviepg.herokuapp.com', '73.43.141.118','73.43.141.118:3000', 'localhost:3000'
    # origins 'movie-pg.herokuapp.com'

    resource '*',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
