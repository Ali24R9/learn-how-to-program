LearnToProgram::Application.routes.draw do

match('/lessons', {:via => :get, :to => 'lessons#index'})
match('/lessons/:id', {:via => :get, :to => 'lessons#show'})
match('/lessons', {:via => :post, :to => 'lessons#create'})
match('/lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
match('/lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
end

