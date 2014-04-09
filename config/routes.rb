Hacker::Application.routes.draw do
 root to: "links#index"
 resources :links, :except => [:new, :edit] do
  resources :votes, :except => [:new, :edit, :delete]
  resources :comments, :except => [:new, :edit, :delete]
  end
end
