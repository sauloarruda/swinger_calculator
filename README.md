# Testing Java Swing applications with Cucumber

## Overview 

Cucumber is a BDD tool writen in Ruby that permit write User Stories in user language for acceptance testing.

This example uses Swinger project, that is a steps implementation for java swing application testing.

In this example we use a Java Calculator implementation and test the subtract scenario. The story is:

  Scenario: Subtract two numbers
    Given the frame "Calculator" is visible
    When I click the button "4"
      And I click the button "-"
      And I click the button "2"
      And I click the button "="
    Then the label "2.0" should be "2.0"

## Running

You will need Apache Maven to create the Calculator application jar archive. To running the tests you will the the JRuby implementation of Ruby and the gems "cucumber", "rspec" and "rake". Follow these steps:

1. Create the distribution of Java calculator with "mvn install" command
1. Configure your ruby environment (next topic)
1. Run the tests with "rake features" command.

For more information see http://github.com/demetriusnunes/swinger

## Configuring your ruby environment

1. Install RVM (http://rvm.beginrescueend.com/)
1. Install JRuby
`
   $ rvm install jruby
   $ rvm use jruby
`
1. Install gem bundler and bundle install
`
    $ gem install bundler
    $ bundle install
`
1. Have fun!
`
    $ rake features
`