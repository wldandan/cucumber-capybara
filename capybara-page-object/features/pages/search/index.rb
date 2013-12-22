module Pages
  module Search
    class Index < Pages::Base

      def goto url
        source.visit url
      end

      component(:search_form) do
        Components::SearchForm.new find('.advsearch')
      end

      def search(*args)
        search_form.search(*args)
      end
    end
  end
end
