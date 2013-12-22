module Pages
  module Search
    class Results < Pages::Base

      component(:results_ol) do
        Components::ResultsList.new find('#res')
      end

      def results
        #puts results_ol.items.count()
        results_ol.results
      end

    end
  end
end
