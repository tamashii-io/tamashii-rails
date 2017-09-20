require 'tamashii/manager'

Tamashii::Rails::Engine.routes.draw do
  mount Tamashii::Manager.server => '/'
end
