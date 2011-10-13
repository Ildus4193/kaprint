module PagesHelper
  def link_to_pages(title, link)
    if user_signed_in? 
     raw "<a href=#{edit_page_path(link)}><span>#{title}</span></a>"
    else
      raw "<a href=#{page_path(link)}><span>#{title}</span></a>"
    end
  end
end
