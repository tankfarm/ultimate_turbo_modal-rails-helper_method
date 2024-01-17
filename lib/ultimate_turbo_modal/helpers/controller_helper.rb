# frozen_string_literal: true

module UltimateTurboModal::Helpers
  module ControllerHelper
    extend ActiveSupport::Concern

    def inside_modal?
      request.headers["Turbo-Frame"] == "modal"
    end

    included do
      break unless defined?(helper_method)
      helper_method :inside_modal?
    end
  end
end
