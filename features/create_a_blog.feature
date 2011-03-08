Feature: Create a new blog

  In order to have an awesome blog
  As a blogger
  I want to create a new blog


  Scenario: Create new blog
    When I run "blast new test_blog"
    Then a directory named "test_blog" should exist
    