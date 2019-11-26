theme:
	mkdir -p themes/kraiklyn && cd theme && git clone https://github.com/jsnjack/kraiklyn

gen-cmd-doc:
	jcli -v
	rm -rf content/commands/*
	jcli doc content/commands
