if exists("did_load_filetypes")
  finish
endif

" Fix file type detection for these formats
augroup filetypedetect
	au! BufRead,BufNewFile .jshintrc set filetype=json
	au! BufRead,BufNewFile *.es6 set filetype=javascript
augroup END
