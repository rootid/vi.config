

### To install new plugin with pathogen

1. Add the git url install.vimplugin.sh && execute


### vim :help

:help internal-variables <b,g,w>

### Surround.vim
To add head tag aroung the text object
yss<head>

*To Add the <html> tag
* add word and then yss-

* To add the div element ysst<div id="nav">
* To add the div id = "nav" accross the line <ctrl+v+$>S <div id="nav">


To add body around a paragraph, 
Shift+V S<body>

In vimconsole to get the ascii type
:echo char2nr("_")

* dw : delete : verb: command ,w : noun : motion/text object
* Macros + Register
* Leader

### ctrl-p

<c-p> : <ctrl-p>
<c-j>,
    Move selection down.
<c-k>,
 Move selection up.

### autocompletion

Command	Type of Completion
<C-n>	        Generic keywords
<C-x><C-n>	Current buffer keywords
<C-x><C-i>	Included file keywords
<C-x><C-]>	tags file keywords
<C-x><C-k>	Dictionary lookup
<C-x><C-l>	Whole line completion
<C-x><C-f>	Filename completion
<C-x><C-o>	Omni-completion

:h popupmenu-completion

* To list all the keyword in the bufferlist use
* :ls!

#### disable/enable scanning of the words
* :set complete-=i
* :set complete+=k (use the dictionary)

#### To extend the omnifunction functionality

:h compl-omni-filetypes
:h complte-functions

#### TODO
* http://stackoverflow.com/questions/997373/making-vim-load-omnicomplete-from-current-working-directory


#### TO use the ftplugin
:h ftplugin-name


#### LINKS

http://media.pragprog.com/titles/dnvim/code/global/episodes.html

#### neocomplete
