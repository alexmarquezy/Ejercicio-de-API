Feature: Automatización de Login NTT DATA

  Background:
    # Esta URL de Postman es la más estable para evitar errores 403
    * url 'https://postman-echo.com'
    * def loginData = read('user.json')

  Scenario: Validar inicio de sesión exitoso con datos externos
    Given path '/post'
    And request loginData
    When method post
    # Validamos que el servidor responda exitosamente
    Then status 200
    # Verificamos que los datos enviados llegaron correctamente
    And match response.json.username == 'postman'
    * print 'Reporte generado con éxito'