module ApplicationHelper
  def title(*parts)
    return if parts.empty?

    content_for :title do
      (parts << 'Ticketee').join(' - ')
    end
  end
end
