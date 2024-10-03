  Feature: Validating Place API's
@AddPlace  @Regression
Scenario Outline: Verify if Place is being Successfully added using AddPlaceAPI	
        Given  Add place Payload "<name>" "<language>" "<address>"
        When user calls "AddPlaceAPI" with "POST" HTTP request
        Then the API call got success with status code 200
        And "status" in response body is "OK"
        And "scope" in response body is "APP"
        And verify place_Id created maps to "<name>" using "getPlaceAPI"
        
        
        Examples: 
        | name     | language  | address             |
        | AAhouse  | English   | World cross centre  |
 #       | RVikas  | Marathi   | Tathwade Pune area  |
 
 @DeletePlace
 Scenario: Verify if delete Place functionality is working
 Given  DeletePlaceAPI Payload
 When user calls "deletePlaceAPI" with "POST" HTTP request
 Then the API call got success with status code 200
 And "status" in response body is "OK"