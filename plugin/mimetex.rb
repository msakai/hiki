require 'cgi'
require 'uri'

def label_mimetex_config; 'mimeTeX' end
def label_mimetex_cgi_path; 'mimetex.cgi URL' end 
def mimetex_cgi_path_default; 'http://www.forkosh.com/mimetex.cgi' end

def mtex(src, alt = nil)
  mimetex = @options['mimetex.cgi_path'] || mimetex_cgi_path_default
  #url = CGI.escapeHTML(mimetex + '?' + src.gsub(/ /, '~'))
  url = CGI.escapeHTML(mimetex + '?' + URI.encode(src))
  alt = CGI.escapeHTML(alt || src)
  %Q[<img src="#{url}" alt="#{alt}" title="#{alt}" class="math" align="middle">]
end

def saveconf_mimetex
  if @mode == 'saveconf' then
    @conf['mimetex.cgi_path'] = @cgi.params['mimetex.cgi_path'][0]
  end
end

add_conf_proc('mimetex', label_mimetex_config) do
  saveconf_mimetex
  @conf['mimetex.cgi_path'] ||= mimetex_cgi_path_default
  str = <<-HTML
  <h3 class="subtitle">#{label_mimetex_cgi_path}</h3>
  <p><input type="text" size="100" name="mimetex.cgi_path" value="#{CGI::escapeHTML( @conf['mimetex.cgi_path'] )}"></p>
  HTML
  str
end

add_header_proc {
  <<-EOS
    <style type="text/css"><!--
      img.math {
        vertical-align: middle;
      }

      div.displaymath {
        text-align: center;
      }
    --></style>
  EOS
}
