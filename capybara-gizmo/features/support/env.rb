require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'gizmo'
World(Gizmo::Helpers)

LIB_PATH = File.dirname(__FILE__) + '/../../lib'
require LIB_PATH + '/patch/string'

Capybara.default_driver= :selenium

module Capybara
  module DSL
    alias :response :page
  end
end

