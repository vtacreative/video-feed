VideoFeed::Application.routes.draw do
  scope :api do
    get "/clips(.:format)" => "clips#index"
    get "/clips/:id(.:format)" => "clips#show"
  end
  root to: "home#index"
end