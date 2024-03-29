LearnToProgram::Application.routes.draw do

match('/lessons', {:via => :get, :to => 'lessons#index'})
match('/sections/lessons/new', {:via => :get, :to => 'lessons#new'})
match('/sections/lessons/:id', {:via => :get, :to => 'lessons#show'})
match('/lessons', {:via => :post, :to => 'lessons#create'})
match('/lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
match('/lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
match('/lessons/:id', {:via => :delete, :to => 'lessons#destroy'})

# CRUD Sections
match('/sections', {:via => :get, :to => 'sections#index'})
match('/sections/new', {:via => :get, :to => 'sections#new'})
match('/sections', {:via => :post, :to => 'sections#create'})
match('/sections/:id/edit', {:via => :get, :to => 'sections#edit'})
match('/sections/:id', {:via => [:patch, :put], :to => 'sections#update'})

end

