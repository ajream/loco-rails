class AdminController < ApplicationController
  before_action :authenticate

  private

    def authenticate
      if not current_admin
        redirect_to new_admin_session_url
      end
    end
end