.PHONY: git_config git_del git_push_master ssh_update vim_update java_update 

git_config :
	git config user.email "vxxxxnhsawxxt@gmail.com"
	git config user.name "rooid"

git_del :
	git status | grep 'deleted' | cut -d ":" -f2 | xargs git rm

git_push_master :
	git push -u origin master

ssh_update :
	ln -s /home/hduser/vi.config/ssh_config /home/hduser/.ssh/config

vim_update :
	ln -s /home/hduser/vi.config/vim.config /home/hduser/.vimrc

java_update :
	ln -s /usr/java/jdk1.7.0_65 /usr/java/latest

