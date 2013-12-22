When(/^I search Google for "([^"]*)"$/) do |query|
  on_page_with :search_form do |page|
    page.search_for query
  end

end

Then(/^there should be a result for "([^"]*)"$/) do |expected_result|
  on_page_with :search_result do |page|
    page.search_for query
  end
end