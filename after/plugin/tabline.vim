function MyTabLine()
	let s = ''
	let t = tabpagenr()
	let i = 1
	while i <= tabpagenr('$')
		let buflist = tabpagebuflist(i)
		let winnr = tabpagewinnr(i)
		let s .= '%' . i . 'T'
		let s .= (i == t ? '%2*' : '%1*')
		let s .= ' '
		let s .= i . ':'
		let s .= winnr . '/' . tabpagewinnr(i,'$')

		let bufnrlist = tabpagebuflist(i)
		for bufnr in bufnrlist
			if getbufvar(bufnr, "&modified")
				let s .= '+'
				break
			endif
		endfor

		let s .= ' %*'
		let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
		let bufnr = buflist[winnr - 1]
		let file = bufname(bufnr)
		let buftype = getbufvar(bufnr, 'buftype')
		if buftype == 'nofile'
			if file =~ '\/.'
				let file = substitute(file, '.*\/\ze.', '', '')
			endif
		else
			let file = fnamemodify(file, ':p:t')
		endif
		if file == ''
			let file = '[No Name]'
		endif
		let s .= file
		let i = i + 1
	endwhile
	let s .= '%T%#TabLineFill#%='
	let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
	return s
endfunction
set stal=2
set tabline=%!MyTabLine()
