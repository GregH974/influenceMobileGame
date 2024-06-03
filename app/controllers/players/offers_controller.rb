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
  end
end
