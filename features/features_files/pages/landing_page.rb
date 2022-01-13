class LandingPage


    def open_website url
        $driver.navigate.to  url
    end
    def close_pop_up
        close_pop_up=$driver.find_element(:css, 'button[class="_2KpZ6l _2doB4z"]')
        $wait.until {close_pop_up.displayed?}
        close_pop_up.click
    end
    def search_for_product product
        search_bar = $driver.find_element(:css, 'input[class="_3704LK"]')
        search_bar.send_keys  product
        $driver.find_element(:css, 'button[class="L0Z3Pu"]').click
    end
end