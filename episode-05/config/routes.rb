Rails.application.routes.draw do
  get('home' => 'home#index')
  get('status' => "status#index")
  get('consoles' => 'consoles#index')
  get 'posts' => 'posts#index'
end
