
Given('Visit {string}') do |string|
    @page.landing_page.open_website string
end

Then('Close login popup') do
    @page.landing_page.close_pop_up

end
  

Then('search for {string}') do |string|
    @page.landing_page.search_for_product string
end
  

Then('Verfy if results of {string} have appeared') do |string|
    @page.search_results_page.verify_search_results
end