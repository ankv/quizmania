let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
nnoremap  :nohl
map  :tabn
map  :tabp
map Y y$
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set confirm
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set ignorecase
set iminsert=0
set laststatus=2
set mouse=a
set pastetoggle=<F11>
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
set showcmd
set smartcase
set softtabstop=2
set nostartofline
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set termencoding=utf-8
set notimeout
set ttimeout
set ttimeoutlen=200
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/josh/quizmania
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 app/assets/stylesheets/custom.css.scss
badd +22 ~/Documents/josh/sample_app/app/assets/stylesheets/custom.css.scss
badd +8 app/views/layouts/_header.html.erb
badd +10 app/views/layouts/application.html.erb
badd +28 ~/Documents/josh/sample_app/app/views/layouts/_header.html.erb
badd +2 app/models/user.rb
badd +9 config/routes.rb
badd +4 app/controllers/users_controller.rb
badd +19 app/views/users/new.html.erb
badd +4 db/migrate/20150101163843_add_index_to_users.rb
badd +15 app/views/users/show.html.erb
badd +10 app/views/sessions/new.html.erb
badd +12 app/controllers/sessions_controller.rb
badd +14 app/helpers/sessions_helper.rb
badd +5 app/controllers/application_controller.rb
badd +3 app/models/quiz.rb
badd +2 app/models/choice.rb
badd +2 app/models/answer.rb
badd +2 app/models/question.rb
badd +4 app/controllers/static_pages_controller.rb
badd +1 app/controllers/quizzes_controller.rb
badd +2 app/views/quizzes/edit.html.erb
badd +1 app/views/quizzes/new.html.erb
badd +1 Gemfile
badd +11 db/seeds.rb
badd +1 app/views/quizzes/_form.html.erb
badd +1 app/controllers/tests_controller.rb
badd +1 app/views/tests/new.html.erb
badd +18 app/views/tests/_form.html.erb
badd +0 app/views/static_pages/home.html.haml
silent! argdel *
edit app/views/tests/_form.html.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=8
setlocal tags=./tags,./TAGS,tags,TAGS,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 019|
tabedit app/views/static_pages/home.html.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=8
setlocal tags=./tags,./TAGS,tags,TAGS,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 018|
tabedit config/routes.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=./tags,./TAGS,tags,TAGS,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/2.1.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.5/lib/ruby/2.1.0/x86_64-linux/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 017|
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
