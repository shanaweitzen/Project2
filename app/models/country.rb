class Country < ActiveRecord::Base
	def retrieveCountry 
		require 'open-uri'
		@response = open('http://www.state.gov/developer/geoPoliticalArea.json').read

		require 'json'
		data = JSON.parse(@response)

		data.each do |item|
			Countries.create(
				name: item['Name'],
				countryid: item['Tag']
		)

		end #ends do
	end # method

	def coordinates
		require 'open-uri'
		@response = open('http://api.worldbank.org/countries').read
		require 'xmlsimple'
		data = XmlSimple.xml_in(@response)

		data['country'][0].each do |item|
			 (
				name: item['name'][0]
				# longitude: item['longitude'][0],
				# latitude: item['latitude'][0]
				)
			

			# data['country'][0]['name'][0]
			# data['country'][0]['longitude'][0]
			# data['country'][0]['latitude'][0]
	end

	# if Countries.each
end #class
end



# data['Name'][0]['Tag'][0].each do |item 
