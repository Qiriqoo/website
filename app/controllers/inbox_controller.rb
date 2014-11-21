class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    response = Response.new
    payload = event_payload['msg']
    raise event_payload.inspect
    ## Find contact
    ## Response email = contact email
    ## Response text = email text
    ## Create response
  end
end