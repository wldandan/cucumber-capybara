module PageWithSearchForm
  include Gizmo::PageMixin

  def valid?
    page.has_selector? ".appbar"
  end

  def title
    @document.xpath("//title").inner_text
  end

  def search_for query
    enter_search_query query
    search
  end

  def click_search_button
     click_button "Advanced Search"
  end

  def enter_search_query query
    fill_in 'as_q', :with => query
  end

  define_action :click_search_button do
    search
  end

  private
  def refresh
    @document = Nokogiri::HTML(body)
  end

  def search
    10.times do |i|
      begin
        page.find('#searchBtn').click
        break
      rescue Exception
        next
      end
    end
  end

end
