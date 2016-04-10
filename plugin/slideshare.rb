def slideshare(url)
  if /^http/ =~ url
    url = CGI.escapeHTML(url)
    %Q[<object type="application/x-shockwave-flash" data="#{url}" width="425" height="348"><param name="movie" value="#{url}" /></object>]
  else
    embed_code = url
    %Q|<iframe src="//www.slideshare.net/slideshow/embed_code/#{embed_code}" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>|
  end
end
