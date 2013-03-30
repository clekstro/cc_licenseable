Feature: CcLicenseable Form Helpers
  In order to persist an object's license information
  As a user on a page containing a helper
  I want to be able to select a license

  Scenario: Included Form Helper
    Given I visit a page with a license form helper
    Then I should see a dropdown with all the licenses

  Scenario: Media
    Given I visit the page containing the Creative Commons media
    Then I should see the CC logo that links to the Creative Commons homepage
    And I should see all small license buttons
    And I should see all medium license buttons
    And I should see all license icons
    And I should see the proper icon chains for each license
