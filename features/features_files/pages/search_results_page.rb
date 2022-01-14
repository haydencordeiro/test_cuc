class ResultsPage
    def initialize
        @results_div_selector=[:css, '._1AtVbE']
    end
    def verify_search_results 
        sleep(1)
        results=$driver.find_elements(*@results_div_selector)
        results.length()>0  

    end
end