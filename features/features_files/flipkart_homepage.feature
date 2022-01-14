 Feature: Search for phones on flipkart
    Scenario: Search phones and get matches on flipkart
        Given Visit "https://flipkart.com/"
        Then Close login popup
        Then search for "phones"
        Then Verfy if results of "phones" have appeared
