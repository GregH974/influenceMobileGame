module Players
  class BaseController < ApplicationController
    prepend_before_action :authenticate_user!
  end
end
