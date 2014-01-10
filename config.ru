use Rack::Static, 
  :urls => %w[/img, /js /css /fonts],
  :root => "public",
  :index => "index.html"

run Rack::File.new("public")
