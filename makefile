.PHONY: git_config ssh_update vim_update 

git_config :
	git config user.email "vxxxxnhsawxxt@gmail.com"
	git config user.name "rooid"

ssh_update :
	ln -s /home/hduser/vi.config/ssh_config /home/hduser/.ssh/config

vim_update :
	ln -s /home/hduser/vi.config/vim.config /home/hduser/.vimrc

java_update :
	ln -s /home/hduser/vi.config/vim.config /home/hduser/.vimrc

