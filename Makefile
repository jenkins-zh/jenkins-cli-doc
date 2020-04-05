init: theme gen-cmd-doc

copy-doc:
	mkdir -p temp
	cd temp && git clone https://github.com/jenkins-zh/jenkins-cli
	cp temp/jenkins-cli/README-zh.md content/zh/_index.md
	cp temp/jenkins-cli/README.md content/en/_index.md

theme:
	mkdir -p themes
	cd themes && git clone https://github.com/matcornic/hugo-theme-learn

gen-cmd-doc:
	jcli version
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