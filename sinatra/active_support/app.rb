require 'active_support/all'
require 'sinatra'

Time::DATE_FORMATS[:my_datetime] = "%Y-%m-%d Hour: %H Minute: %M Second: %S"

get '/' do
  Time.now.to_s(:my_datetime)
end
