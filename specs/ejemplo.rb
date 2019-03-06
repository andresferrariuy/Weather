require 'selenium-webdriver'
require 'rspec'
require "chromedriver-helper"

describe "prueba google" do
  before(:each)do
    @driver = Selenium::WebDriver.for :chrome
    @base_url = "https://es-la.facebook.com/"
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 60
  end


  context "Prueba"
    it "Prueba busqueda" do
      sleep 10
      @driver.get(@base_url)
      sleep 10
      @driver.find_element(:id, "email").click
      @driver.find_element(:id, "email").clear
      @driver.find_element(:id, "email").send_keys "andres.ferrari@these.com.uy"
      @driver.find_element(:id, "pass").click
      @driver.find_element(:id, "pass").clear
      @driver.find_element(:id, "pass").send_keys "these123"
      sleep 5
      @driver.find_element(:id, "u_0_2").click

    end
end
