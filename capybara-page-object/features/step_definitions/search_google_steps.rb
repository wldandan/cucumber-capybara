When(/^I search Google for "([^"]*)"$/) do |query|

  @page = Pages::Search::Index.new
  @page.goto 'http://www.google.com/advanced_search?hl=en'
  @page.search query
end

Then(/^there should be a result for "([^"]*)"$/) do |expected_result|
  puts "Capybara-Page-Object [Pages::Search::Results]"
  @results_page = Pages::Search::Results.new
  @results_page.results.should include expected_result
end