class HelloController < Steven::Controller
  get "/hello" do
    view("hello/index")
  end

  get "/hello/:id" do
    view("hello/test")
  end
end
