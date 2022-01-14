class LandingPage
    def initialize
        @pop_up_close_button_selector=[:css, 'button[class="_2KpZ6l _2doB4z"]']
        @search_bar_selector=[:css, 'input[class="_3704LK"]']
        @search_button_selector=[:css, 'button[class="L0Z3Pu"]']
    end
    def open_website url
        $driver.navigate.to  url
    end
    def close_pop_up
        sleep(2)
        close_pop_up_button=$driver.find_element *@pop_up_close_button_selector
        $wait.until {close_pop_up_button.displayed?}
        close_pop_up_button.click
    end
    def search_for_product product
        search_bar = $driver.find_element *@search_bar_selector
        search_bar.send_keys  product
        $driver.find_element(*@search_button_selector).click
    end
end