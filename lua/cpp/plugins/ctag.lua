vim.cmd[[
function! s:find_git_root()
  		 return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command MakeTags execute
		\'silent !(/usr/local/Cellar/ctags/5.8_2/bin/ctags -f '
		\.s:find_git_root().'/.tags -R '
		\.s:find_git_root().'/* && /usr/local/Cellar/ctags/5.8_2/bin/ctags -f '
		\.s:find_git_root().'/.tags -Ra '
		\.s:find_git_root().'/node_modules/bootstrap/dist/css/* '
		\.s:find_git_root().'/node_modules/bootstrap/scss/*)>/dev/null &' | redraw!

autocmd BufWritePost *.scss, *.css silent :MakeTags

set tags+=.tags;$HOME

]]

