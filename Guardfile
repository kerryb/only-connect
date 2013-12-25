guard :coffeescript, input: "src/coffee", output: "public/js", run_at_start: true

guard :haml, input: "src/haml", output: "public", run_at_start: true

guard :sass, input: "src/scss", output: "public/css", run_at_start: true

guard :livereload do
  watch "public"
end

notification :growl
