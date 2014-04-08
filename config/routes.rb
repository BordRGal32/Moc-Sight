Hacker::Application.routes.draw do
 root to: "links#index"
 resources :links, :except => [:new, :edit]
end
