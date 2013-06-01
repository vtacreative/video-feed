VideoFeed::Application.routes.draw do
  get "home/index"
  scope :api do
    get "/clips(.:format)" => "clips#index"
    get "/clips/:id(.:format)" => "clips#show"
  end
end