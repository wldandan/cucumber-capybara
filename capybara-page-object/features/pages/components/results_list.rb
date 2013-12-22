module Pages
  module Components
    class ResultsList < CapybaraPageObject::List

      # TODO this seems messy, should I call #rows ?

      def results
        all('cite').map { |el| el.text }
      end

      def orders
        r = []
        source.all('#ires.li').each do |li|
          puts li.
          next if li.has_css?('th') # skip header row

        end
        r
      end
    end
  end
end
