Hyouki::Engine.routes.draw do
  get ':class/:method', to: 'hyouki#show'
end
