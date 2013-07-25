class DataPoint < ActiveRecord::Base
	include ActionView::Helpers
	def retrieve # returns the travel alerts issued by the state department as a hash 
		require 'open-uri'
		@response = open('http://travel.state.gov/_res/rss/TAs.xml').read #retrieves the travel alerts from state dept 

		require 'xmlsimple'
		data = XmlSimple.xml_in(@response) #parse the response string into a data hash! 
		@identifier
											#loops through all of the item
		data['channel'][0]['item'].each do |item|
			@identifier = item['identifier'][0].split(",").first
			DataPoint.create(
				title: item['title'][0], 
				description: strip_tags(item['description'][0]), 
				pubdate: item['pubDate'][0],
				countryid: @identifier
			)
		end									
		@identifier
	end
end