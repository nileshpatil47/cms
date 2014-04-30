module ApplicationHelper
	def app_title title
		"<div id='page-title'>
		  <div id='page-title-inner'>
		    <div class='container'>
		      <h2><i class='ico-stats ico-white'></i>#{title}</h2>
		    </div>
		  </div>  
		</div>".html_safe
	end
end
