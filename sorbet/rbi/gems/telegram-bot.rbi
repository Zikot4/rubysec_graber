# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/telegram-bot/all/telegram-bot.rbi
#
# telegram-bot-0.14.3
module Telegram
  extend Telegram::Bot::ConfigMethods
end
module Telegram::Bot
  def deprecation_0_15; end
  def self.deprecation_0_15; end
end
module Telegram::Bot::ConfigMethods
  def bot; end
  def bot_poller_mode=(arg0); end
  def bot_poller_mode?; end
  def bots; end
  def bots_config; end
  def bots_config=(arg0); end
  def reset_bots; end
end
module Telegram::Bot::RoutesHelper
  def self.escape_token(token); end
  def self.route_name_for_bot(bot); end
  def telegram_webhook(controller, bot = nil, **options); end
end
class Telegram::Bot::Railtie < Rails::Railtie
end
class Telegram::Bot::Error < StandardError
end
class Telegram::Bot::Forbidden < Telegram::Bot::Error
end
class Telegram::Bot::NotFound < Telegram::Bot::Error
end
