# -*- coding: utf-8 -*-

#def sakai_search_box
#  src = <<END
#<script type="text/javascript" language="javascript">
#function sakai_search_box_change_icon(){
#  if (!document.getElementById) return
#
#  var site_select = document.getElementById('search_site')
#  var site   = site_select.options[site_select.selectedIndex].value
#  var box    = document.getElementById('search_site_icon')
#  var anchor = document.createElement('a')
#  var img    = document.createElement('img')
#
#  if (site == "") {
#    anchor.href = "http://www.namazu.org"
#    img.src = "http://web.sfc.keio.ac.jp/~sakai/images/namazu.png"
#  } else if (site == "bk1") {
#    anchor.href = "http://www.bk1.co.jp/cgi-bin/srch/srch_top.cgi?aid=p-susho15145"
#    img.src = "http://web.sfc.keio.ac.jp/~sakai/images/bk1.gif"
#  } else if (site == "amazon.co.jp") {
#    anchor.href = "http://www.amazon.co.jp"
#    img.src = "http://web.sfc.keio.ac.jp/~sakai/images/amazon_88x31_white.gif"
#  } else if (site == "google") {
#    anchor.href = "http://www.google.com"
#    img.src = "http://www.google.com/intl/ja/logos/Logo_25wht.gif"
#  } else if (site == "goo") {
#    anchor.href = "http://www.goo.ne.jp"
#    img.src = "http://www.goo.ne.jp/help/link/image/goo167.gif"
#  } else if (site == "lycos.co.jp") {
#    anchor.href = "http://www.lycos.co.jp"
#    img.src = "http://www.lycos.co.jp/images/logo_link.gif"
#  } else if (site == "yahoo.co.jp") {
#    anchor.href = "http://www.yahoo.co.jp"
#    img.src = "http://img.yahoo.co.jp/images/recip_sm.gif"
#  } else if (site == "ruby-man-1.6") {
#    anchor.href = "http://www.ruby-lang.org"
#    img.src = "http://web.sfc.keio.ac.jp/~sakai/images/powered-by-ruby.png"
#  } else if (site == "haq") {
#    anchor.href = "http://www01.vaio.ne.jp/BASTA/"
#    img.src = "http://web.sfc.keio.ac.jp/~sakai/images/HGban3.jpg"
#  } else if (site == "webcatplus") {
#    anchor.href = "http://webcatplus.nii.ac.jp/"
#    img.src = "http://webcatplus.nii.ac.jp/webcatplus/widgets/banner/webcatplus_124x37.gif"
#  }
#
#  if (box.firstChild)
#    box.removeChild(box.firstChild)
#  if (anchor.href != '') {
#    anchor.appendChild(img)
#    box.appendChild(anchor)
#  }
#}
#</script>
#<form method="get" action="http://www.tom.sfc.keio.ac.jp/~sakai/search.cgi" accept-charset="euc-jp us-ascii">
#<table>
#<tbody>
#<tr>
#  <td><input type="text" name="query" value="" />
#      <input type="submit" value="検索" /></td>
#  <td rowspan="2"><div id="search_site_icon"></div></td>
#</tr>
#<tr>
#  <td>
#    <select name="site" id="search_site" onchange="sakai_search_box_change_icon()">
#      <!--<option value="">旧サイト内検索 (Namazu)</option>-->
#      <optgroup label="一般の検索エンジン">
#        <option value="google">Google</option>
#        <option value="lycos.co.jp">lycos.co.jp</option>
#        <!--<option value="kensaku.jp">kensaku.jp</option>-->
#        <option value="mecha">メッチャ検索エンジン</option>
#        <option value="goo">goo</option>
#        <option value="archie">IIJ Archie Service</option>
#        <option value="yahoo.co.jp">yahoo.co.jp</option>
#        <!--<option value="alexa">Alexa</option>-->
#      </optgroup>
#      <optgroup label="本">
#        <option value="amazon.co.jp">amazon.co.jp</option>
#        <option value="skysoft.co.jp">skysoft.co.jp</option>
#        <option value="bk1">bk1</option>
#        <option value="webcatplus">Webcat Plus</option>
#      </optgroup>
#      <option value="ruby-man-1.6">Ruby1.6系リファレンス</option>
#      <!--<option value="shoyukai">湘友会・ホームページリンク集</option>-->
#      <!--<option value="haq">HAQ</option>-->
#    </select>
#  </td>
#</tr>
#</tbody>
#</table>
#</form>
#END
#
#  src = '</p>' + src + '<p>'
#
#  src
#end

def sakai_google_custom_search
<<END
<form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="010678972735552647050:ugutgfuhoga" />
    <input type="hidden" name="ie" value="utf-8" />
    <input type="text" name="q" size="31" />
    <input type="submit" name="sa" value="検索" />
  </div>
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=ja"></script>
END
end
