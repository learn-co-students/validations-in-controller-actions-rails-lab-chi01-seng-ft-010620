Rails.application.routes.draw do
  get "/authors/new", to: "authors#new", as: "new_author"
  get "/authors/:id", to: "authors#show", as: "author"
  post "/authors", to: "authors#create"

  get "/posts/:id", to: "posts#show", as: "post"
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "/posts/:id", to: "posts#update"
end

# Prefix Verb  URI Pattern               Controller#Action
# new_author GET   /authors/new(.:format)    authors#new
#     author GET   /authors/:id(.:format)    authors#show
#    authors POST  /authors(.:format)        authors#create
#       post GET   /posts/:id(.:format)      posts#show
#  edit_post GET   /posts/:id/edit(.:format) posts#edit
#            PATCH /posts/:id(.:format)      posts#update