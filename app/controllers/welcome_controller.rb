require 'nokogiri'
require 'open-uri'

class WelcomeController < ApplicationController

  def index
    url = 'http://www.cafeconleche.org/examples/baseball/1998statistics.xml'
    doc=Nokogiri::XML(open(url))
    @outputs= doc.xpath('//TEAM/PLAYER')

  end
end
