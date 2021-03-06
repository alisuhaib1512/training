class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  def current_user
    super || OpenStruct.new(name: "Guest user",
                             first_name: "Guest",
                              last_name: "user",
                              email:"guestuser@fliclicks.com"
                              )
  end
end
