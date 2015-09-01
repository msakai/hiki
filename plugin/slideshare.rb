def slideshare(url)
  url = CGI.escapeHTML(url)
  %Q[<object type="application/x-shockwave-flash" data="#{url}" width="425" height="348"><param name="movie" value="#{url}" /></object>]
end
