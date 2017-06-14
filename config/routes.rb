Rails.application.routes.draw do
  get 'survey/:survey_token', to: 'survey#index', constraints: {
    survey_token: /[0-9a-f]{10,}/ }

  put 'survey/:survey_token', to: 'survey#update', as: :survey

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
