#encoding: utf-8
Feature: task pages
  In order to enter a track your workout routine.
  You need to visit the task pages to enter the information.
  
  Background:
    Given "user" is logged in
    
  Scenario: index page
    When I visit the "index" page for "tasks"
    Then I see a page with these elements
    	| page_text |
    	| Listing  	|
    	| New  		|
    	
  Scenario: new page
    When I visit the "new" page for "tasks"
    Then I see a page with these elements
    	| page_text |
    	| reps  	|
    	| weight  	|    	