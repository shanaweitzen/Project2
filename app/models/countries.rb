class Countries < ActiveRecord::Base
	def retrieveCountry 
		require 'open-uri'
		@response = open('http://www.state.gov/developer/geoPoliticalArea.json').read

		require 'xmlsimple'
		data = XmlSimple.xml_in(@response)

		data['channel'][0]['item'].each do |point|
			Countries.create(identifier: point['identifier'].first.split(",").first)
		end #ends do
	end # method
end #class




