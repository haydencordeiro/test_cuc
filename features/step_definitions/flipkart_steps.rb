Given(/^i am on flipkart home page$/)do
    $driver.navigate.to  "https://www.flipkart.com/"
    close_pop_up=$driver.find_element(:css, 'button[class="_2KpZ6l _2doB4z"]')
    $wait.until {close_pop_up.displayed?}
    close_pop_up.click
    search_bar = $driver.find_element(:css, 'input[class="_3704LK"]')
    search_bar.send_keys "phone"
    $driver.find_element(:css, 'button[class="L0Z3Pu"]').click
    puts "Flipkart opened"
    sleep(10)
end

Then(/^verify if search bar is there$/)do
    pending
    
end