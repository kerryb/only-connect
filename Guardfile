guard :copy, from: "src/img", to: "public/img", run_at_start: true, mkpath: true

guard :coffeescript, input: "src/coffeescript", output: "public/js", all_on_start: true, source_map: true

guard :haml, input: "src/haml", output: "public", run_at_start: true

guard :sass, input: "src/scss", output: "public/css", all_on_start: true

guard :livereload do
  watch %r{^public}
end

notification :growl
