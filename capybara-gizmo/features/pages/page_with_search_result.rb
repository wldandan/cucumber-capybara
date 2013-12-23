module PageWithSearchResult
  include Gizmo::PageMixin
  include BaseFunctions

  def selectors
    {
    }
  end

  def search_results_text
    all('cite').map { |el| el.text }
  end

end
