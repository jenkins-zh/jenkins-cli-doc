theme:
	mkdir themes
	cd themes && git clone https://gitee.com/surenpi/hugo-theme-learn

gen-cmd-doc:
	jcli -v
	rm -rf content/en/commands/*
	mkdir -p content/en/commands
	jcli doc content/en/commands

	rm -rf content/zh/commands/*
	mkdir -p content/zh/commands
	LC_ALL=zh_CN.utf8 jcli doc content/zh/commands

clean:
	rm -rf content/en/commands/*
	rm -rf content/zh/commands/*
	rm -rf themes/*