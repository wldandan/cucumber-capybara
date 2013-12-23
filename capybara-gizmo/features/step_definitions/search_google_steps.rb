When /^I search Google for "(.*)"$/ do |query|

  visit 'http://www.google.com/advanced_search?hl=en'
  #fill_in 'as_q', :with => query
  #click_button 'Search'

  on_page_with :search do |page|
    page.searchByKeyword query
  end

end

Then /^there should be a result for "(.*)"$/ do |expected_result|
  on_page_with :search_result do |page|
    page.search_results_text.should include expected_result
  end
end
