let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 index.php
badd +1 core/controller.php
badd +1 core/loader.php
badd +1 core/model.php
badd +1 core/route.php
badd +1 app/controllers/login.php
badd +1 app/controllers/home.php
badd +196 app/assets/css/style.css
badd +16 app/controllers/editor.php
badd +1 app/controllers/gallery.php
badd +3 app/models/login.php
badd +1 app/controllers/register.php
badd +15 app/models/register.php
badd +1 app/assets/css/login.css
badd +1 app/assets/css/register.css
badd +1 config/setup.php
badd +1 config/database.php
badd +1 config/config.php
badd +60 app/assets/css/editor.css
badd +50 app/script/js/webcam.js
badd +86 app/assets/css/gallery.css
badd +1 app/script/js/send_picture.js
badd +9 app/models/media.php
badd +1 app/controllers/logout.php
badd +58 app/assets/css/glyphicons.css
badd +1 core/tool.php
badd +36 app/assets/css/input.css
badd +1 app/script/js/init.js
badd +1 app/script/js/lunch.js
badd +1 .htaccess
badd +1 app/views/404.html
badd +1 app/views/header.html
badd +1 app/views/login/to_log.html
badd +1 app/views/login/user_loggued.html
badd +1 app/views/home.html
badd +1 app/views/footer.html
badd +1 app/views/login/login.html
badd +2 app/views/login/footer.html
badd +1 app/views/register/register.html
badd +6 app/views/register/success.html
badd +53 app/views/gallery/paging.html
badd +3 app/views/gallery/gallery.html
badd +13 app/views/editor/left_side.html
badd +1 app/views/editor/editor.html
badd +1 app/views/editor/right_side.html
badd +1 app/views/default_layout.html
badd +1 app/views/msg.html
badd +1 app/script/php/login.php
badd +48 app/models/user.php
badd +1 app/views/login/forgotten_password.html
badd +7 app/views/login/reset_password.html
badd +1 app/script/php/mail.php
badd +24 app/views/gallery/focus.html
badd +54 app/assets/css/focus.css
badd +9 app/script/php/like_bar.php
badd +1 app/controllers/media.php
badd +47 app/models/likes.php
badd +1 app/controllers/settings.php
badd +1 app/views/settings.html
badd +1 app/assets/css/settings.css
badd +4 app/views/gallery/user.html
badd +1 app/controllers/like.php
badd +1 app/controllers/comment.php
badd +1 app/assets/css/paging.css
badd +1 app/views/prompter.html
badd +1 app/views/gallery/focus_right.php
badd +399 config/camagru.sql
badd +1 config/camagru1.sql
badd +1 app/models
badd +1 app/models/comments.php
badd +1 app/controllers
badd +1 app/entity/email.php
badd +1 app/entity/user.php
badd +66 app/models/settings.php
badd +1 config/camagru.sql2
badd +9 config/setup/main.html
badd +1 config/setup/db.php
badd +4 config/setup/status.php
badd +1 config/setup/status.html
badd +1 config/setup
badd +1 config/tables.sql
badd +1 config/sample.sql
badd +1 app/views/editor
badd +1 r
badd +1 config/sql
badd +1 config/sql/tables.sql
badd +1 sample
badd +1 sample/sample.sql
badd +1 app/assets/css/responsive.css
argglobal
silent! argdel *
$argadd ~/cursus/camagru/index.php
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnext -12
edit config/database.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 184 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 184 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 022|
wincmd w
argglobal
if bufexists('config/config.php') | buffer config/config.php | else | edit config/config.php | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists('config/setup.php') | buffer config/setup.php | else | edit config/setup.php | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 47 - ((15 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 05|
wincmd w
argglobal
if bufexists('config/setup/db.php') | buffer config/setup/db.php | else | edit config/setup/db.php | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
79
normal! zo
let s:l = 52 - ((51 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 0
wincmd w
argglobal
if bufexists('config/setup/status.html') | buffer config/setup/status.html | else | edit config/setup/status.html | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/config/setup/main.html') | buffer ~/cursus/camagru/config/setup/main.html | else | edit ~/cursus/camagru/config/setup/main.html | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
normal! zo
3
normal! zo
6
normal! zo
9
normal! zo
let s:l = 12 - ((11 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/config/sql/tables.sql') | buffer ~/cursus/camagru/config/sql/tables.sql | else | edit ~/cursus/camagru/config/sql/tables.sql | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/sample/sample.sql') | buffer ~/cursus/camagru/sample/sample.sql | else | edit ~/cursus/camagru/sample/sample.sql | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 184 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 184 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/config/database.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 7 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 34 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 138 + 181) / 362)
exe '5resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
exe '7resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 138 + 181) / 362)
exe '8resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 138 + 181) / 362)
exe '9resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 138 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/config/config.php') | buffer ~/cursus/camagru/config/config.php | else | edit ~/cursus/camagru/config/config.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 023|
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/tool.php') | buffer ~/cursus/camagru/core/tool.php | else | edit ~/cursus/camagru/core/tool.php | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 69 - ((29 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 0
wincmd w
argglobal
if bufexists('~/cursus/camagru/.htaccess') | buffer ~/cursus/camagru/.htaccess | else | edit ~/cursus/camagru/.htaccess | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/route.php') | buffer ~/cursus/camagru/core/route.php | else | edit ~/cursus/camagru/core/route.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 48 - ((39 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 010|
wincmd w
argglobal
if bufexists('~/cursus/camagru/index.php') | buffer ~/cursus/camagru/index.php | else | edit ~/cursus/camagru/index.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/model.php') | buffer ~/cursus/camagru/core/model.php | else | edit ~/cursus/camagru/core/model.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/loader.php') | buffer ~/cursus/camagru/core/loader.php | else | edit ~/cursus/camagru/core/loader.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 032|
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/controller.php') | buffer ~/cursus/camagru/core/controller.php | else | edit ~/cursus/camagru/core/controller.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 7 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 34 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 138 + 181) / 362)
exe '5resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
exe '7resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 138 + 181) / 362)
exe '8resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 138 + 181) / 362)
exe '9resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 138 + 181) / 362)
tabnext
edit ~/cursus/camagru/core/controller.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 41 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 48 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/login.php') | buffer ~/cursus/camagru/app/controllers/login.php | else | edit ~/cursus/camagru/app/controllers/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/register.php') | buffer ~/cursus/camagru/app/controllers/register.php | else | edit ~/cursus/camagru/app/controllers/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/logout.php') | buffer ~/cursus/camagru/app/controllers/logout.php | else | edit ~/cursus/camagru/app/controllers/logout.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/home.php') | buffer ~/cursus/camagru/app/controllers/home.php | else | edit ~/cursus/camagru/app/controllers/home.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/gallery.php') | buffer ~/cursus/camagru/app/controllers/gallery.php | else | edit ~/cursus/camagru/app/controllers/gallery.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/editor.php') | buffer ~/cursus/camagru/app/controllers/editor.php | else | edit ~/cursus/camagru/app/controllers/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/settings.php') | buffer ~/cursus/camagru/app/controllers/settings.php | else | edit ~/cursus/camagru/app/controllers/settings.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 41 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 48 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/media.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 121 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/like.php') | buffer ~/cursus/camagru/app/controllers/like.php | else | edit ~/cursus/camagru/app/controllers/like.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/comment.php') | buffer ~/cursus/camagru/app/controllers/comment.php | else | edit ~/cursus/camagru/app/controllers/comment.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 05|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 121 + 181) / 362)
tabnext
edit ~/cursus/camagru/core/model.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/register.php') | buffer ~/cursus/camagru/app/models/register.php | else | edit ~/cursus/camagru/app/models/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/likes.php') | buffer ~/cursus/camagru/app/models/likes.php | else | edit ~/cursus/camagru/app/models/likes.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/login.php') | buffer ~/cursus/camagru/app/models/login.php | else | edit ~/cursus/camagru/app/models/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((14 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 64 - ((17 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/comments.php') | buffer ~/cursus/camagru/app/models/comments.php | else | edit ~/cursus/camagru/app/models/comments.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/likes.php') | buffer ~/cursus/camagru/app/models/likes.php | else | edit ~/cursus/camagru/app/models/likes.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 017|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/home.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
5wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 92 + 181) / 362)
exe '7resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 92 + 181) / 362)
exe '9resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 92 + 181) / 362)
exe '10resize ' . ((&lines * 11 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 92 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 84 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 84 + 181) / 362)
exe '13resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 14resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 020|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/404.html') | buffer ~/cursus/camagru/app/views/404.html | else | edit ~/cursus/camagru/app/views/404.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/msg.html') | buffer ~/cursus/camagru/app/views/msg.html | else | edit ~/cursus/camagru/app/views/msg.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/default_layout.html') | buffer ~/cursus/camagru/app/views/default_layout.html | else | edit ~/cursus/camagru/app/views/default_layout.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((7 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/header.html') | buffer ~/cursus/camagru/app/views/header.html | else | edit ~/cursus/camagru/app/views/header.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/to_log.html') | buffer ~/cursus/camagru/app/views/login/to_log.html | else | edit ~/cursus/camagru/app/views/login/to_log.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/user_loggued.html') | buffer ~/cursus/camagru/app/views/login/user_loggued.html | else | edit ~/cursus/camagru/app/views/login/user_loggued.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 08|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/home.html') | buffer ~/cursus/camagru/app/views/home.html | else | edit ~/cursus/camagru/app/views/home.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/prompter.html') | buffer ~/cursus/camagru/app/views/prompter.html | else | edit ~/cursus/camagru/app/views/prompter.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/footer.html') | buffer ~/cursus/camagru/app/views/footer.html | else | edit ~/cursus/camagru/app/views/footer.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 115 - ((15 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
115
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 02|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/glyphicons.css') | buffer ~/cursus/camagru/app/assets/css/glyphicons.css | else | edit ~/cursus/camagru/app/assets/css/glyphicons.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((7 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/responsive.css') | buffer ~/cursus/camagru/app/assets/css/responsive.css | else | edit ~/cursus/camagru/app/assets/css/responsive.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
let s:l = 64 - ((62 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 92 + 181) / 362)
exe '7resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 92 + 181) / 362)
exe '9resize ' . ((&lines * 12 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 92 + 181) / 362)
exe '10resize ' . ((&lines * 11 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 92 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 84 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 84 + 181) / 362)
exe '13resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 14resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/register.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((9 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/register.php') | buffer ~/cursus/camagru/app/models/register.php | else | edit ~/cursus/camagru/app/models/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/login.php') | buffer ~/cursus/camagru/app/script/php/login.php | else | edit ~/cursus/camagru/app/script/php/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 49 - ((47 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 030|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/register.html') | buffer ~/cursus/camagru/app/views/register/register.html | else | edit ~/cursus/camagru/app/views/register/register.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/success.html') | buffer ~/cursus/camagru/app/views/register/success.html | else | edit ~/cursus/camagru/app/views/register/success.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 330 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
330
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 67 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/register.css') | buffer ~/cursus/camagru/app/assets/css/register.css | else | edit ~/cursus/camagru/app/assets/css/register.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((16 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/login.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 92 + 181) / 362)
exe '9resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 92 + 181) / 362)
exe '10resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((7 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 046|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/login.php') | buffer ~/cursus/camagru/app/models/login.php | else | edit ~/cursus/camagru/app/models/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/settings.php') | buffer ~/cursus/camagru/app/models/settings.php | else | edit ~/cursus/camagru/app/models/settings.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 031|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/logout.php') | buffer ~/cursus/camagru/app/controllers/logout.php | else | edit ~/cursus/camagru/app/controllers/logout.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 021|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/login.php') | buffer ~/cursus/camagru/app/script/php/login.php | else | edit ~/cursus/camagru/app/script/php/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((24 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 028|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/login.html') | buffer ~/cursus/camagru/app/views/login/login.html | else | edit ~/cursus/camagru/app/views/login/login.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/forgotten_password.html') | buffer ~/cursus/camagru/app/views/login/forgotten_password.html | else | edit ~/cursus/camagru/app/views/login/forgotten_password.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/reset_password.html') | buffer ~/cursus/camagru/app/views/login/reset_password.html | else | edit ~/cursus/camagru/app/views/login/reset_password.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((8 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
let s:c = 57 - ((52 * winwidth(0) + 46) / 92)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 57 . '|'
else
  normal! 057|
endif
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 69 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 07|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/login.css') | buffer ~/cursus/camagru/app/assets/css/login.css | else | edit ~/cursus/camagru/app/assets/css/login.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 021|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 92 + 181) / 362)
exe '9resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 92 + 181) / 362)
exe '10resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/gallery.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 91 + 181) / 362)
exe '2resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 3 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 91 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 86 + 181) / 362)
exe '8resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 86 + 181) / 362)
exe '9resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 50 - ((26 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 057|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 91 - ((18 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
91
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/gallery.html') | buffer ~/cursus/camagru/app/views/gallery/gallery.html | else | edit ~/cursus/camagru/app/views/gallery/gallery.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((13 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/focus.html') | buffer ~/cursus/camagru/app/views/gallery/focus.html | else | edit ~/cursus/camagru/app/views/gallery/focus.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/focus_right.php') | buffer ~/cursus/camagru/app/views/gallery/focus_right.php | else | edit ~/cursus/camagru/app/views/gallery/focus_right.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 024|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/user.html') | buffer ~/cursus/camagru/app/views/gallery/user.html | else | edit ~/cursus/camagru/app/views/gallery/user.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/like_bar.php') | buffer ~/cursus/camagru/app/script/php/like_bar.php | else | edit ~/cursus/camagru/app/script/php/like_bar.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((19 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/paging.html') | buffer ~/cursus/camagru/app/views/gallery/paging.html | else | edit ~/cursus/camagru/app/views/gallery/paging.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 87 - ((7 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
87
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/focus.css') | buffer ~/cursus/camagru/app/assets/css/focus.css | else | edit ~/cursus/camagru/app/assets/css/focus.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/gallery.css') | buffer ~/cursus/camagru/app/assets/css/gallery.css | else | edit ~/cursus/camagru/app/assets/css/gallery.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 44 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/paging.css') | buffer ~/cursus/camagru/app/assets/css/paging.css | else | edit ~/cursus/camagru/app/assets/css/paging.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((12 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 91 + 181) / 362)
exe '2resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 3 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 91 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 86 + 181) / 362)
exe '8resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 86 + 181) / 362)
exe '9resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/editor.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 41 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 1 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 96 + 181) / 362)
exe '9resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 96 + 181) / 362)
exe '10resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 96 + 181) / 362)
exe '11resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 95 + 181) / 362)
exe '12resize ' . ((&lines * 14 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 95 + 181) / 362)
exe '13resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 95 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 65 - ((8 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 029|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/media.php') | buffer ~/cursus/camagru/app/controllers/media.php | else | edit ~/cursus/camagru/app/controllers/media.php | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 36 - ((7 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/send_picture.js') | buffer ~/cursus/camagru/app/script/js/send_picture.js | else | edit ~/cursus/camagru/app/script/js/send_picture.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((33 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 042|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/webcam.js') | buffer ~/cursus/camagru/app/script/js/webcam.js | else | edit ~/cursus/camagru/app/script/js/webcam.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 77 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/init.js') | buffer ~/cursus/camagru/app/script/js/init.js | else | edit ~/cursus/camagru/app/script/js/init.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((10 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/lunch.js') | buffer ~/cursus/camagru/app/script/js/lunch.js | else | edit ~/cursus/camagru/app/script/js/lunch.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/left_side.html') | buffer ~/cursus/camagru/app/views/editor/left_side.html | else | edit ~/cursus/camagru/app/views/editor/left_side.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/editor.html') | buffer ~/cursus/camagru/app/views/editor/editor.html | else | edit ~/cursus/camagru/app/views/editor/editor.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 021|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/right_side.html') | buffer ~/cursus/camagru/app/views/editor/right_side.html | else | edit ~/cursus/camagru/app/views/editor/right_side.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((14 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((6 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 020|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/editor.css') | buffer ~/cursus/camagru/app/assets/css/editor.css | else | edit ~/cursus/camagru/app/assets/css/editor.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 128 - ((17 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
128
normal! 017|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 41 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 1 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 96 + 181) / 362)
exe '9resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 96 + 181) / 362)
exe '10resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 96 + 181) / 362)
exe '11resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 95 + 181) / 362)
exe '12resize ' . ((&lines * 14 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 95 + 181) / 362)
exe '13resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 95 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/controllers/settings.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 65 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 6resize ' . ((&columns * 85 + 181) / 362)
exe '7resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 106 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 106 + 181) / 362)
exe '9resize ' . ((&lines * 14 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 106 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/msg.html') | buffer ~/cursus/camagru/app/views/msg.html | else | edit ~/cursus/camagru/app/views/msg.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/login.php') | buffer ~/cursus/camagru/app/script/php/login.php | else | edit ~/cursus/camagru/app/script/php/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 015|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/login.php') | buffer ~/cursus/camagru/app/script/php/login.php | else | edit ~/cursus/camagru/app/script/php/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((11 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/settings.html') | buffer ~/cursus/camagru/app/views/settings.html | else | edit ~/cursus/camagru/app/views/settings.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((26 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 122 - ((20 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
122
normal! 026|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((17 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/settings.css') | buffer ~/cursus/camagru/app/assets/css/settings.css | else | edit ~/cursus/camagru/app/assets/css/settings.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 65 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 6resize ' . ((&columns * 85 + 181) / 362)
exe '7resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 106 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 106 + 181) / 362)
exe '9resize ' . ((&lines * 14 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 106 + 181) / 362)
tabnext
edit ~/cursus/camagru/core/loader.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/entity/email.php') | buffer ~/cursus/camagru/app/entity/email.php | else | edit ~/cursus/camagru/app/entity/email.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 49 - ((24 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 047|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/entity/user.php') | buffer ~/cursus/camagru/app/entity/user.php | else | edit ~/cursus/camagru/app/entity/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((13 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 24 - ((21 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/like.php') | buffer ~/cursus/camagru/app/controllers/like.php | else | edit ~/cursus/camagru/app/controllers/like.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/register.php') | buffer ~/cursus/camagru/app/controllers/register.php | else | edit ~/cursus/camagru/app/controllers/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((8 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
tabnext
edit ~/cursus/camagru/app/script/js/lunch.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 2 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 60 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 98 + 181) / 362)
exe '6resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 98 + 181) / 362)
exe '7resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 59 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 84 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 1) / 2)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 023|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/init.js') | buffer ~/cursus/camagru/app/script/js/init.js | else | edit ~/cursus/camagru/app/script/js/init.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/core/controller.php') | buffer ~/cursus/camagru/core/controller.php | else | edit ~/cursus/camagru/core/controller.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 87 - ((21 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
87
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/send_picture.js') | buffer ~/cursus/camagru/app/script/js/send_picture.js | else | edit ~/cursus/camagru/app/script/js/send_picture.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((42 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 013|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/webcam.js') | buffer ~/cursus/camagru/app/script/js/webcam.js | else | edit ~/cursus/camagru/app/script/js/webcam.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 95 - ((38 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
95
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/prompter.html') | buffer ~/cursus/camagru/app/views/prompter.html | else | edit ~/cursus/camagru/app/views/prompter.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/editor.php') | buffer ~/cursus/camagru/app/controllers/editor.php | else | edit ~/cursus/camagru/app/controllers/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 041|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/media.php') | buffer ~/cursus/camagru/app/controllers/media.php | else | edit ~/cursus/camagru/app/controllers/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 62 - ((15 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
62
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 2 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 60 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 98 + 181) / 362)
exe '6resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 98 + 181) / 362)
exe '7resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 59 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 84 + 181) / 362)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=84 shortmess=filnxtToO
set winminheight=1 winminwidth=10
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
