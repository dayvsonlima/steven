module Core
  module Views
    macro view(filename)
      render "src/app/views/#{{{filename}}}.ecr"
    end
  end
end
