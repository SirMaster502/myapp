class WelcomeController < ApplicationController

  def index
  		@current_ability ||= Ability.new(current_user)
  end
end
