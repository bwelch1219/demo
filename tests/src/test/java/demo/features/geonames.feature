Feature: First Call

  Scenario: First Test


  Given url 'http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=ozzie100'
  When method get
  Then status 200
  * print 'response:', response

  Scenario: Second Scenario - secure

  # enable ssl (and no certificate is required)
  * configure ssl = true

  Given url 'https://secure.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=ozzie100'
  When method get
  Then status 200
  * print 'response:', response

  Scenario: Third Scenario - Ocean lookup

  Given url 'http://api.geonames.org/oceanJSON'
  And param lat = 19.8968
  And param lng = 155.5828
  And param username = 'ozzie100'
  And param lang = 'de'
  When method get
  Then status 200
  And match response.ocean.name == 'North Pacific Ocean'
  #And match response $.name == 'North Pacific Ocean'
  #And match $.name == 'North Pacific Ocean'
  And assert responseTime < 1000
  * print 'response:', response


  Scenario: Fourth Scenario - POI lookup

  * def poiSchema = { lng:'#string',distance:'#string',name:'#string',typeClass:'#string',typeName:'#string',lat:'#string' }
  Given url 'http://api.geonames.org/findNearbyPOIsOSMJSON'
  And param lat = 37.451
  And param lng = -122.18
  And param username = 'ozzie100'
  When method get
  Then status 200
  # should be an array
  * match response.poi == '#[]'
  # should be an array of size > 7
  * match response.poi == '##[_ > 7]'
  * match response ==
  """
  {
    poi: '#[] poiSchema'
  }
  """
  * match response.poi[*].name contains ['Starbucks']
  * print 'response:', response



  Scenario: Fifth Scenario - Weather xml

  Given url 'http://api.geonames.org/weather'
  And param north = 44.1
  And param south = -9.9
  And param east = -22.4
  And param west = 55.2
  And param username = 'ozzie100'
  When method get
  Then status 200
  Then match response.geonames.observation[*].stationName contains 'HALF MOON BAY'
  * print 'response:', response

#  Scenario: Sixth Scenario - Weather xml with table
#
#  Given url 'http://api.geonames.org/weather'
#  And param north = <north>
#  And param south = <south>
#  And param east = <east>
#  And param west = <west>
#  And param username = 'ozzie100'
#  When method get
#  Then status 200
#  Then match response.geonames.observation[*].stationName contains 'HALF MOON BAY'
#  * print 'response:', response
#
#  Examples:
# | north | south | east  | west |
#  | 44.1  | -9.9  | -22.4 | 55.2 |
