Feature: First Call

  Scenario: First Test

  # enable ssl (and no certificate is required)
  * configure ssl = true

  Given url 'https://api.cascade1.seed-innovations.net/api'
  And header Authorization = 'Bearer ' + myTOKEN
  When method get
  Then status 200
  * print 'response:', response

  Given url 'https://api.cascade1.seed-innovations.net/api/v1'
  And header Authorization = 'Bearer ' + myTOKEN
  When method get
  Then status 200
  * print 'response:', response

  Given url 'https://api.cascade1.seed-innovations.net/api/v1/resources'
  And header Authorization = 'Bearer ' + myTOKEN
  When method get
  Then status 403
  * print 'response:', response
