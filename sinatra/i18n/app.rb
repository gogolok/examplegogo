require 'erb'
require 'i18n'
require 'sinatra'

I18n.load_path << Dir[File.join(File.expand_path(File.dirname(__FILE__) + '/locale'), '*.yml')]
I18n.load_path.flatten!

before do
  set_locale
end

get '/' do
  erb :index
end

helpers do

  def set_locale
    I18n.locale = ['de'].delete extract_locale_from_accept_language_header || 'en'
  end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  rescue
    ''
  end

  def t(*args)
    I18n.t(*args)
  end

end
