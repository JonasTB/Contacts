Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resource :contacts
    end
  end

  # constrants subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resource :contacts
  #     end
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
