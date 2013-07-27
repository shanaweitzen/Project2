class CountryImporter 
  include ActionView::Helpers

  def retrieveCountry 
    require 'open-uri'
    @response = open('http://www.state.gov/developer/geoPoliticalArea.json').read

    require 'json'
    data = JSON.parse(@response)

    data.each do |item|
      Country.create(
        name: item['Name'],
        alpha_2_code: item['Tag']
    )

    end #ends do
  end # method

  def coordinates
    require 'open-uri'
    xml = File.open(File.join(Rails.root, "db", "countries.xml"), "r")

    require 'xmlsimple'
    data = XmlSimple.xml_in(xml)

    
      
    data['row'].each do |item|
      Country.create(
        name: item['country'][0],
        alpha_2_code: item['alpha_2_code'][0],
        alpha_3_code: item['alpha_3_code'][0],
        numeric_code: item['numeric_code'][0],
        latitude_average: item['latitude_average'][0],
        longitude_average: item['longitude_average'][0]
      )
    end

  end #class
end



