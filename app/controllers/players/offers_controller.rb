module Players
  class OffersController < BaseController
    def edit
      @offers = nil
      @claim_offers = nil
      player = Player.find_by(user_id: current_user.id)

      if player.present?
        @claim_offers = player.offers
        @offers = player.targeted_offers - @claim_offers
      end
    end

    def claim
      offer = Offer.find(claim_params)
      player = current_user.players&.first

      if player.targeted_offers.present? && player.targeted_offers.pluck(:id).include?(offer.id)
        player&.offers << offer

        redirect_to edit_players_offer_path, notice: 'Offer claimed successfully.'
      else
        redirect_to edit_players_offer_path, notice: 'You can not claim this offer.'
      end
    end

    private

      def claim_params
        params.require(:format)
      end
  end
end
