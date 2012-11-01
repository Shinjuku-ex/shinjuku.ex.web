defmodule ApplicationRouter do
  use Dynamo.Router

  # Pick which parts of the request you want to fetch
  # You can comment the line below if you don't need
  # any of them or move them to a forwarded router
  fetch [:cookies, :params]

  # It is common to break your application in many
  # routers forwarding the requests between them
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Dynamo!")
    render conn, "index.html"
  end
end
