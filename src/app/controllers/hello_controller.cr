class HelloController
  include Core::Views

  get "/" do
    pp Example.all
    view("hello/index")
  end

  get "/test" do
    "holla dayvson"
  end
end
