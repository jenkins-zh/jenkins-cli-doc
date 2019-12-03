init: theme gen-cmd-doc

theme:
	mkdir -p themes
	cd themes && git clone https://gitee.com/surenpi/hugo-theme-learn

gen-cmd-doc:
	jcli -v
	rm -rf content/en/commands/[a-z]*.md
	mkdir -p content/en/commands
	jcli doc content/en/commands

	rm -rf content/zh/commands/[a-z]*.md
	mkdir -p content/zh/commands
	LC_ALL=zh_CN.utf8 jcli doc content/zh/commands

clean:
	rm -rf content/en/commands/[a-z]*.md
	rm -rf content/zh/commands/[a-z]*.md
	rm -rf themes/*