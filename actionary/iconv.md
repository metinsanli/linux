<div class="postrow">
		
		<h2 class="posttitle icon">
			Re: Change Encoding of a Text File
		</h2>
		
				
				
		<div class="content">
			<div id="post_message_7762023">
				<blockquote class="postcontent restore">
					If you knew the original encoding, you could use <div class="bbcode_container">
	<div class="bbcode_description">Code:</div>
	<pre class="bbcode_code" style="height:36px;">iconv -f ORIGINALENCODING -t utf-8 ORIGINALFILE &gt; TARGETFILE</pre>
</div>You can try and detect the encoding with <div class="bbcode_container">
	<div class="bbcode_description">Code:</div>
	<pre class="bbcode_code" style="height:36px;">file YOURFILE</pre>
</div>The detection doesn't always work as it relies on some inaccurate magicks, but it does work most of the time.
				</blockquote>
			</div>
