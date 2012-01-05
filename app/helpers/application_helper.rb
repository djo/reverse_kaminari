module ApplicationHelper

  def reverse_url(page, num_pages, per_page)
    offset1 = (num_pages - page) * per_page + 1
    offset2 = offset1 + per_page - 1
    offsets = "#{offset1}-#{offset2}"
    url_for(:page => (page <= 1 ? nil : offsets))
  end

end
