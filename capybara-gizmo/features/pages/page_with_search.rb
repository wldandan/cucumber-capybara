module PageWithSearch
  include Gizmo::PageMixin
  include BaseFunctions

  def selectors
    {
    }
  end

  def searchByKeyword keyword
    fill_in "as_q", :with => keyword
    click_button 'Advanced Search'
  end
end