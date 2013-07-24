class DataPoint < ActiveRecord::Base
	def retrieve # returns the travel alerts issued by the state department as a hash 
		require 'open-uri'
		@response = open('http://travel.state.gov/_res/rss/TAs.xml').read #retrieves the travel alerts from state dept 

		require 'xmlsimple'
		data = XmlSimple.xml_in(@response) #parse the response string into a data hash! 


		data['channel'][0] #return the channel (there is only one)
	end
end
