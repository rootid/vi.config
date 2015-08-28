.PHONY: git_config git_del git_push_master ssh_update vim_update java_update 

git_config :
	git config user.email "vxxxxxxx@gmail.com"
	git config user.name "rooid"

git_del :
	git status | grep 'deleted' | cut -d ":" -f2 | xargs git rm

git_push_master :
	git push -u origin master

ssh_update :
	ln -s /home/vikram/vi.config/ssh_config /home/vikram/.ssh/config

vim_update :
	ln -s /home/vikram/vi.config/vim.config /home/vikram/.vimrc

tmux_update :
	ln -s /home/vikram/vi.config/tmux.config /home/vikram/.tmux.conf

java_update :
	ln -s /usr/java/jdk1.7.0_79 /usr/java/latest

vim_config :
	mkdir -p ${PWD}/bundle 
	ln -s /home/vikram/vi.config/bundle /home/vikram/.vim/bundle
	mkdir -p ${PWD}/autoload 
	ln -s /home/vikram/vi.config/autoload /home/vikram/.vim/autoload
	curl https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim > ${PWD}/pathogen.vim

install_ctags :
	sudo apt-get install exuberant-ctags
