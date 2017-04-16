Rails.application.routes.draw do
  resources :posts do
    member do
      get :confirm_destroy #potwierdzenie usunięcia posta będzie w nowej stronie
    end

    collection do
      get :published #wyświetla wyłącznie opublikowane posty
    end
  end
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
