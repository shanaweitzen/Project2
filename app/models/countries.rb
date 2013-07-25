class Countries < ActiveRecord::Base
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
end #class



# data['Name'][0]['Tag'][0].each do |item 
