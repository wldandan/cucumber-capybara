module Pages
  module Components
    class SearchForm < CapybaraPageObject::Form
      def search(query)
        source.fill_in 'as_q',    :with => query
        source.click_button 'Search'
      end
    end
  end
end