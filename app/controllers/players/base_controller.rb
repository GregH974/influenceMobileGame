module Players
  class BaseController < ApplicationController
    prepend_before_action :authenticate_user!
    before_action :find_or_create_player

    private
      def find_or_create_player
        @player = Player.find_or_create_by(user_id: current_user.id)
      end
  end
end
