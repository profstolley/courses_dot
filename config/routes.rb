Rails.application.routes.draw do
  match 'survey/:survey_token', to: 'survey#index', constraints: {
    survey_token: /[0-9a-f]{10,}/ }, via: [:get]
  match 'survey/:survey_token', to: 'survey#update', via: [:put, :patch], as: :survey
  get 'survey/thanks', to: 'survey#thanks', as: :survey_thanks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
