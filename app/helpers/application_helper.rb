# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  FLASH_TYPES = [
    :notice,      # positive feedback (ie - action successful)
    :message,     # neutral (ie - reminders)
    :warning      # errors (ie - login failed)
  ]
  
  def flash_messages
    flash.keys.collect { |k|
      content_tag("div", flash[k], :class => "flash_#{k}")}.join("\n")
  end
end
