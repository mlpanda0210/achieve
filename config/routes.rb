Rails.application.routes.draw do

  get 'notifications/index'

  resources :submit_requests do
    get 'inbox', on: :collection
    member do
      patch 'approve'
      patch 'reject'
    end
  end

  resources :tasks
  devise_for :users, controllers: {
   registrations: "users/registrations",
   omniauth_callbacks: "users/omniauth_callbacks"
 }

  get 'relationships/create'
  get 'relationships/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :blogs do
    resources :comments
    collection do
      post :confirm
    end
  end

  resources :contacts, only:[:new,:create] do
    collection do
     post :confirm
   end
  end

  resources :users, only: [:index, :show, :edit, :update] do
    resources :tasks
  end

  resources :relationships, only: [:create, :destroy]

  resources :conversations do
    resources :messages
  end

 root 'top#index'

 if Rails.env.development?
   mount LetterOpenerWeb::Engine, at: "/letter_opener"
 end
end
