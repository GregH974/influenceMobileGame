module Players
  class ProfilesController < BaseController
    def edit
    end

    def update
      if @player.update(player_params)
        flash[:success] = 'Your profile has been updated successfully.'
        redirect_to edit_players_profile_path
      else
        flash[:error] = @player.errors.full_messages.to_sentence
        render :edit
      end
    end

    private
      def player_params
        params.require(:player).permit(:last_name, :first_name, :age, :gender)
      end
  end
end
