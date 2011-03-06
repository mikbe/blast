Feature: Command line options

  In order to control Blast!
  As a blogger
  I want to give it command line options
  
  Scenario: Create new blog
    When I run "blast new test_blog"
    Then the following directories should exist:
    | test_blog                         |
    | test_blog/articles                |
    | test_blog/public                  |
    | test_blog/public/css              |
    | test_blog/public/files            |
    | test_blog/public/images           |
    | test_blog/public/js               |
    | test_blog/templates               |
    | test_blog/templates/default       |
    | test_blog/templates/default/pages |
