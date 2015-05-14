require "selenium-webdriver"

class ElendRateChecker

  def check_rates()
    driver = Selenium::WebDriver.for :firefox
    driver.navigate.to "https://www.elend.com"

    wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
    wait.until { driver.find_elements(:css => "div.ng-binding.odometer.odometer-auto-theme.odometer-animating-down").size == 0 }

    class_name = "odometer-inside"
    element = driver.find_element(:class, class_name)
    elements = element.find_elements(:xpath, "./*")

    rate = ""

    elements.each { |x|
      rate = rate + x.text
    }

    puts rate

    if (rate.to_f <= 3.64)
      puts "Congrats!  You qualify for a drop in rate."
    end

    driver.quit
  end
end
