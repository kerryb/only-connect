FileUtils.mkdir_p "tmp/coffeescript" # coffeedripper doesn't have a mkpath option

guard :copy, from: "src/img", to: "public/img", run_at_start: true, mkpath: true

guard :coffeedripper, input: "src/coffeescript", output: "tmp/coffeescript", run_at_start: true

guard :coffeescript, input: "tmp/coffeescript", output: "public/js", all_on_start: true, source_map: true

guard :haml, input: "src/haml", output: "public", run_at_start: true

guard :sass, input: "src/scss", output: "public/css", all_on_start: true

guard :livereload do
  watch %r{^public}
end

notification :growl
