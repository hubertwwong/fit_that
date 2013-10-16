#encoding: utf-8
Feature: task page
 
  Scenario: index
    Given "user" is logged in
    When I visit "task_path"
    Then I see a page with these elements
    	| elements 	|
    	| Listing  	|
    	| New  		|