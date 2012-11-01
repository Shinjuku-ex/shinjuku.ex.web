unless Dynamo.app do
  Dynamo.start(:test, File.expand_path("../..", __FILE__))
  ShinjukuEx.start
end

ExUnit.start

# Enable reloading in each ExUnit process
ExUnit.after_spawn fn ->
  Dynamo.Reloader.enable
end
