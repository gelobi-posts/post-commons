module.exports = ->

	articleEl = document.querySelector '.pageContainer > .article'

	comments = document.createElement 'div'
	comments.classList.add 'comments'

	articleEl.appendChild comments

	disqus = document.createElement 'div'
	disqus.setAttribute 'id', 'disqus_thread'

	comments.appendChild disqus

	disqus_shortname = 'gelobi'

	`
	var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
	dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
	(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	`

	return