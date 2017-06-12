.PHONY: git_config git_del git_push_master ssh_update vim_update java_update get_home vim_link vim_boot

HOME_DIR = ${HOME}
CWD = ${PWD}

get_home:
	@echo $(HOME_DIR)
	@echo $(CWD)

git_config :
	git config user.email "vXXXXXXXX@gmail.com"
	git config user.name "rootid"

git_del :
	git status | grep 'deleted' | cut -d ":" -f2 | xargs git rm

git_push_master :
	git push -u origin master

ssh_update :
	ln -s $(CWD)/ssh_config $(HOME_DIR)/.ssh/config

tmux_update :
	ln -s $(CWD)/tmux.config $(HOME_DIR)/.tmux.conf

java_update :
	ln -s /usr/java/jdk1.7.0_79 /usr/java/latest

vim_boot :
	mkdir -p $(CWD)/bundle 
	mkdir -p $(CWD)/autoload 
	curl https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim > $(CWD)/pathogen.vim

vim_ln_update :
	ln -sf $(CWD)/bundle $(HOME_DIR)/.vim/bundle
	ln -sf $(CWD)/vim.addons $(HOME_DIR)/.vim/vim.addons
	ln -sf $(CWD)/autoload $(HOME_DIR)/.vim/autoload
	ln -sf $(CWD)/vim.config $(HOME_DIR)/.vimrc
	ln -sf $(CWD)/vim.snippets/ultisnips-vim $(HOME_DIR)/.vim/UltiSnips 
	ln -sf $(CWD)/vim.colors $(HOME_DIR)/.vim/colors
	ln -sf $(CWD)/ftplugin.vim/ftdetect $(HOME_DIR)/.vim/ftdetect
	ln -sf $(CWD)/ftplugin.vim/ftplugin $(HOME_DIR)/.vim/ftplugin

bash_ln_update :
	mkdir -p $(HOME_DIR)/.vi.bash
	ln -sf $(CWD)/bash.addons/default.shrc $(HOME_DIR)/.vi.bash/default.shrc
	ln -sf $(CWD)/bash.addons/git.shrc $(HOME_DIR)/.vi.bash/git.shrc
	ln -sf $(CWD)/bash.addons/search.shrc $(HOME_DIR)/.vi.bash/search.shrc
	ln -sf $(CWD)/bash.addons/trash.shrc $(HOME_DIR)/.vi.bash/trash.shrc
	# Update .bahsrc/.profile with
	# source ~/.vi.bash/default.shrc

install_ctags :
	sudo apt-get install exuberant-ctags
