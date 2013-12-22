module Pages
  class Base < CapybaraPageObject::Page

    def checkout_available?
    end

    def errors
      all('#error_explanation ul li').collect(&:text)
    end

    def notice
      find('#notice').text
    end
  end
end
