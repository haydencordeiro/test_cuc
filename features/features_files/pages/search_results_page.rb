class ResultsPage

    def verify_search_results 
        sleep(1)
        results=$driver.find_elements(:css, '._1AtVbE')
        results.length()>0  

    end
end